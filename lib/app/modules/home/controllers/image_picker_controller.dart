import 'dart:io';

// import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  static ImagePickerController imgController = Get.find();

  var pickedFile = Rx<File?>(null);
  File? get profileImage => pickedFile.value;
  // Rx<File> image = File('').obs;

  Future<void> imagePickerFromGallery() async {
    final ImagePicker picker = ImagePicker();
    final XFile? imageFile = await picker.pickImage(source: ImageSource.gallery);

    if (imageFile != null) {
      pickedFile.value = File(imageFile.path);
      Get.snackbar("Profile Message", "Success Upload Picture");
    } else {
      Get.snackbar("Profile Message", "No image selected");
    }
  }

  Future<void> imagePickerFromCamera() async {
    final ImagePicker picker = ImagePicker();
    final XFile? imageFile = await picker.pickImage(source: ImageSource.camera);

    if (imageFile != null) {
      pickedFile.value = File(imageFile.path);
      Get.snackbar("Profile Message", "Success Upload Picture");
    } else {
      Get.snackbar("Profile Message", "No image selected");
    }
  }

  // Future imagePickerfromCamera() async {
  //   try {
  //     final imagePick =
  //       await ImagePicker().pickImage(source: ImageSource.camera);
  //     if (imagePick == null) {
  //       return;
  //     }
  //     final imageTemp = File(imagePick.path);
  //     image.value = imageTemp;
  //   } on PlatformException catch (e) {
  //     return e;
  //   }
  // }
}
