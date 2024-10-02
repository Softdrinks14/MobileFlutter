import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modul_1/app/modules/home/controllers/image_picker_controller.dart';

class imagepicker extends StatelessWidget {
  // var imagePicker = ImagePickerController.imgController;
  final ImagePickerController controller = Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ImagePickerController());
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Center(
            child: Obx(() {
              return Container(
                height: 500,
                width: 500,
                decoration: const BoxDecoration(color: Colors.white),
                child: controller.pickedFile.value == null
                    ? Icon(
                        Icons.person,
                        size: 200,
                      )
                    : Image.file(controller.pickedFile.value!),
              );
            }),
          ),
          ElevatedButton(
              onPressed: () async {
                await chooseCamOrGal(context);
              },
              child:
                  const Text('Select Images', style: TextStyle(fontSize: 30)))
        ],
      )),
    );
  }

  Future<void> chooseCamOrGal(BuildContext context) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Select Image Source"),
          actions: [
            TextButton(
              onPressed: () async {
                Navigator.of(context).pop();
                await controller.imagePickerFromGallery();
              },
              child: Text("Gallery"),
            ),
            TextButton(
              onPressed: () async {
                Navigator.of(context).pop();
                await controller.imagePickerFromCamera();
              },
              child: Text("Camera"),
            ),
          ],
        );
      },
    );
  }
}
