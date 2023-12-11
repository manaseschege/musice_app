import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/pages/splashsreenview.dart';

import 'controllers/device_scanning_controller.dart';
import 'controllers/splashscreencontroller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    Get.put(SplashScreenController());
    Get.put(DeviceScanningController());
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreenView(),

    );
  }
}
