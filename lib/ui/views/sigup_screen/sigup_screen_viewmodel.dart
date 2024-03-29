import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SigupScreenViewModel extends BaseViewModel {
  TextEditingController userNameCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController phoneNoCtrl = TextEditingController();

  hexStringToColor(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return Color(int.parse(hexColor, radix: 16));
  }


  creatAndUploadUser() async {
    // if (!validateInputs()) {
    //   return false;
    // }

    // isLoading.value = true;
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: emailCtrl.text.toString().trim(),
            password: passwordCtrl.text.toString().trim())
        .then((value) async {
      print("User Created");
      //upload the user in the instructors collection
      await FirebaseFirestore.instance
          .collection("instructors")
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .set({
        "name": userNameCtrl.text.toString().trim(),
        "email": emailCtrl.text.toString().trim(),
        "uid": value.user!.uid,
        "isInstructor": true,
        "createdAt": DateTime.now().millisecondsSinceEpoch.toString()
      }).then((value) {
        // resetFields();
        print("User Uploaded");
        //sign in the user
        // Get.back();
        print("User Signed In");
        // isLoading.value = false;
        return true;
      });
    });
    return false;
  }
}
