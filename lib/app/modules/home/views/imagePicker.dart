import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modul_1/app/modules/home/controllers/image_picker_controller.dart';

class imagepicker extends StatelessWidget {
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
                  decoration: const BoxDecoration(color: Colors.black),
                  child: controller.image.value.path == ''
                      ? Icon(
                          Icons.person,
                          size: 200,
                        )
                      : Image.file(controller.image.value));
            }),
          ),
          ElevatedButton(
              onPressed: () {
                controller.imagePicker();
              },
              child:
                  const Text('Select Images', style: TextStyle(fontSize: 30)))
        ],
      )),
    );
  }
}
