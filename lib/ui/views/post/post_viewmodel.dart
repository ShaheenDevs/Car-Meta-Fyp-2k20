import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';

class PostViewModel extends BaseViewModel {
  TextEditingController postCtrl= TextEditingController();
  
  TextEditingController companyCtrl= TextEditingController();
  
  TextEditingController modelCtrl= TextEditingController();
  
  TextEditingController milageCtrl= TextEditingController();
  
  TextEditingController priceCtrl= TextEditingController();
   File? image;
   Future<void> pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    
      if (pickedFile != null) {
        image = File(pickedFile.path);
        notifyListeners();
      } else {
        print('No image selected.');
      }
    
  }
}
