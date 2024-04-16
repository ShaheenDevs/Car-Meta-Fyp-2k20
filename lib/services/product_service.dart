import 'package:car_meta/app/app.locator.dart';
import 'package:car_meta/models/auth.dart';
import 'package:car_meta/models/petrol_pump.dart';
import 'package:car_meta/models/product.dart';
import 'package:car_meta/models/response.dart';
import 'package:car_meta/services/auth_service.dart';
import 'package:car_meta/services/snak_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stacked/stacked.dart';

class ProductService with ListenableServiceMixin {
  final _authService = locator<AuthService>();
  AuthModel? get userData => _authService.userData;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  initialize() {
    listenToAllPosts().data?.listen((event) {
      allProducts = event;
      notifyListeners();
    });

    listenToMyPosts().data?.listen((event) {
      myProducts = event;
      notifyListeners();
    });
    listenPetroPump().listen((event) {
      allPetrolPump = event;
      notifyListeners();
    });
  }

  List<ProductModel> myProducts = [];
  List<ProductModel> allProducts = [];
  List<ProductModel> limtedProducts = [];
  List<PetrolPump> allPetrolPump = [];

  Stream<List<PetrolPump>> listenPetroPump() {
    try {
      final stream = firestore.collection('pump').snapshots().map((event) {
        for (var item in event.docs) {
          allPetrolPump.add(PetrolPump.fromJson(item.data(), item.id));
        }
        return allPetrolPump;
      });
      return stream;
    } catch (e) {
      throw ('Error listening from listenToLimtedPosts: $e');
    }
  }

  postAd(ProductModel product) async {
    try {
      await firestore.collection("products").doc().set(product.toJson());
    } catch (e) {
      showErrorSnack(e.toString());
    }
  }

  savedProduct(postId) async {
    await firestore.collection("products").doc(postId).update({
      "saved": FieldValue.arrayUnion([userData!.uID]),
    });
  }

  unSavedProduct(postId) async {
    await firestore.collection("products").doc(postId).update({
      "saved": FieldValue.arrayRemove([userData!.uID]),
    });
  }

  ResponseModel<Stream<List<ProductModel>>> listenToAllPosts() {
    try {
      final stream = firestore
          .collection('products')
          // .orderBy("createOn", descending: true)
          .snapshots()
          .map((event) {
        List<ProductModel> products = [];
        for (var item in event.docs) {
          products.add(ProductModel.fromJson(item.data(), item.id));
        }
        return products;
      });
      return ResponseModel.completed(stream);
    } catch (e) {
      return ResponseModel.error(
          'Error listening from listenToLimtedPosts: $e');
    }
  }

  ResponseModel<Stream<List<ProductModel>>> listenToLimtedPosts(
      String type, int limit) {
    try {
      final stream = firestore
          .collection('products')
          .where("type", isEqualTo: type)
          .limit(limit)
          .snapshots()
          .map((event) {
        for (var item in event.docs) {
          limtedProducts.add(ProductModel.fromJson(item.data(), item.id));
        }
        return limtedProducts;
      });
      return ResponseModel.completed(stream);
    } catch (e) {
      return ResponseModel.error(
          'Error listening from listenToLimtedPosts: $e');
    }
  }

  ResponseModel<Stream<List<ProductModel>>> listenToAllSavedPosts() {
    try {
      final stream = firestore
          .collection('products')
          .where("saved", arrayContains: userData!.uID)
          .snapshots()
          .map((event) {
        List<ProductModel> products = [];

        for (var item in event.docs) {
          products.add(ProductModel.fromJson(item.data(), item.id));
        }
        return products;
      });
      return ResponseModel.completed(stream);
    } catch (e) {
      return ResponseModel.error(
          'Error listening from listenToLimtedPosts: $e');
    }
  }

  ResponseModel<Stream<List<ProductModel>>> listenToMyPosts() {
    try {
      final stream = firestore
          .collection('products')
          .where("saller.uId", isEqualTo: userData!.uID)
          .snapshots()
          .map((event) {
        List<ProductModel> products = [];
        for (var item in event.docs) {
          products.add(ProductModel.fromJson(item.data(), item.id));
        }
        return products;
      });
      return ResponseModel.completed(stream);
    } catch (e) {
      return ResponseModel.error(
          'Error listening from listenToLimtedPosts: $e');
    }
  }

  addPetroPump(PetrolPump petrolPump) {
    firestore.collection("pump").doc(userData?.uID).set(petrolPump.toJson());
  }

  removePetroPump() {
    firestore.collection("pump").doc(userData?.uID).delete();
  }

  addMechanic(PetrolPump petrolPump) {
    firestore
        .collection("mechanic")
        .doc(userData?.uID)
        .set(petrolPump.toJson());
  }

  removeMechanic() {
    firestore.collection("mechanic").doc(userData?.uID).delete();
  }

  deletePost(id) async {
    await firestore.collection('products').doc(id).delete();
  }
}
