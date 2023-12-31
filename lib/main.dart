import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/controllers/splashscreencontroller.dart';
import 'package:music_app/pages/splashsreenview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(SplashScreenController());
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreenView(),
    );
  }
}


