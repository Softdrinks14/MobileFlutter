import 'dart:async';
import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:modul_1/app/modules/home/views/home_page.dart';

class LoadingScreen extends StatefulWidget {
  @override
  Loading createState() => Loading();
}

class Loading extends State<LoadingScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Get.off(LandingPage());
    });
  }

  @override
  Widget build(Object context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'resource/Q.png',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
