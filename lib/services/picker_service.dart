// ignore_for_file: body_might_complete_normally_catch_error

import 'dart:io';
import 'package:car_meta/services/snak_bar.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

class PickerService {
  Future<String> pickImage(collection) async {
    XFile? image = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      imageQuality: 25,
    );

    if (image == null) {
      return "";
    }

    Reference ref = FirebaseStorage.instance
        .ref()
        .child(collection + "/${DateTime.now().microsecondsSinceEpoch}");
    UploadTask uploadTask = ref.putFile(File(image.path));

    try {
      await uploadTask;
      String? profile = await ref.getDownloadURL();
      return profile;
    } catch (e) {
      showErrorSnack(e.toString());
      return "";
    }
  }

  Future<String> pickPdf(collection) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result == null) {
      return "";
    }

    File file = File(result.files.single.path!);
    Reference ref = FirebaseStorage.instance
        .ref()
        .child(collection ?? "/${DateTime.now().microsecondsSinceEpoch}");
    UploadTask uploadTask = ref.putFile(File(file.path));

    try {
      await uploadTask;
      String? profile = await ref.getDownloadURL();
      return profile;
    } catch (e) {
      showErrorSnack(e.toString());
      return "";
    }
  }
}
