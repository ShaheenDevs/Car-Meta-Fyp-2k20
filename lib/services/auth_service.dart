import 'dart:developer';
import 'package:car_meta/models/auth.dart';
import 'package:car_meta/services/share_preferances.dart';
import 'package:car_meta/services/snak_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:stacked/stacked.dart';
// import 'package:email_otp/email_otp.dart';

class AuthService with ListenableServiceMixin {
  AuthModel? userData;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  // final _activityService = locator<ActivityService>();

  initialize() async {
    await updateUserData();
    notifyListeners();
  }

  FirebaseAuth auth = FirebaseAuth.instance;

  signUp(AuthModel userData) async {
    try {
      UserCredential user = await auth.createUserWithEmailAndPassword(
          email: userData.email ?? "", password: userData.password ?? "");
      userData.uID = user.user!.uid;
      this.userData = userData;
      await firestore
          .collection("users")
          .doc(user.user!.uid)
          .set(userData.toJson());

      return "SignUp Successfully";
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        showErrorSnack('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        showErrorSnack('The account already exists for that email.');
      }
    } catch (e, s) {
      showErrorSnack(e.toString());
      log("=====>$s");
    }
  }

  loginNow(email, password) async {
    try {
      final UserCredential user = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      final DocumentSnapshot snapshot =
          await firestore.collection("users").doc(user.user?.uid).get();
      Map<String, dynamic> json = snapshot.data() as Map<String, dynamic>;
      userData = AuthModel.fromJson(json);
      userData?.uID = user.user?.uid;
      sharedPrefWrite("uID", userData?.uID);
      return "login successfully";
    } on FirebaseAuthException catch (e) {
      showErrorSnack(e.code.toString());
    } catch (e, s) {
      showErrorSnack(e.toString());
      log("=====>$s");
    }
  }

  updateUserData() async {
    try {
      String? uID = await sharedPrefRead("uID");
      if (uID != null) {
        final DocumentSnapshot snapshot =
            await firestore.collection("users").doc(uID).get();
        Map<String, dynamic> json = snapshot.data() as Map<String, dynamic>;
        userData = AuthModel.fromJson(json);
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future<AuthModel?> getOtherUserData(uID) async {
    try {
      if (uID != null) {
        final DocumentSnapshot snapshot =
            await firestore.collection("users").doc(uID).get();
        Map<String, dynamic> json = snapshot.data() as Map<String, dynamic>;
        return AuthModel.fromJson(json);
      }
    } catch (e) {
      log(e.toString());
      rethrow;
    }
    return null;
  }

  updateUserByMap(Map<String, dynamic> data) async {
    try {
      await firestore.collection("users").doc(userData?.uID).update(data);
      return "update successfully";
    } catch (e, s) {
      showErrorSnack(e.toString());
      log("=====>$s");
    }
  }

  //   sendOtpS(nameCTRL, emailCTRL, passwordCTRL, _userType) async {
  //   name = nameCTRL.text.trim();
  //   email = emailCTRL.text.trim();
  //   password = passwordCTRL.text.trim();
  //   userType = _userType;
  //   if (name == "" || email == "" || password == "") {
  //     message = "filled all filed";
  //   } else {
  //     try {
  //       AuthModel.setConfig(
  //           appEmail: "khawarjutt101@gmail.com",
  //           appName: "Email OTP",
  //           userEmail: emailCTRL.text,
  //           otpLength: 6,
  //           otpType: OTPType.digitsOnly);
  //       if (await myauth.sendOTP() == true) {
  //         message = "OTP has been sent";
  //       } else {
  //         message = "OTP send failled";
  //       }
  //     } catch (e, s) {
  //     FirebaseCrashlytics.instance.recordError(e, s,reason:"function:sendOtp",printDetails: true,fatal: true);
  //     log(e.toString());
  //   }
  //   }
  // }
  // verify(otp) async {
  //   log('==>$otp');
  //   try{
  //   if (await myauth.verifyOTP(otp: otp) == true) {
  //     createAccount();
  //     message = "Signup Successfuly";
  //   } else {
  //     message = 'incorrect otp';
  //   }
  //   } catch (e, s) {
  //     FirebaseCrashlytics.instance.recordError(e, s,reason:"function:verify(otp)",printDetails: true,fatal: true);
  //     log(e.toString());
  //   }
  // }
}
