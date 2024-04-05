import 'package:car_meta/app/app.locator.dart';
import 'package:car_meta/models/auth.dart';
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
  }

  List<ProductModel> myProducts = [];
  List<ProductModel> allProducts = [];
  List<ProductModel> limtedProducts = [];

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
}
