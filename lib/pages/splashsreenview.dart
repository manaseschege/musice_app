import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:image_fade/image_fade.dart';
import 'package:music_app/widgets/text.dart';

class SplashScreenView extends GetView{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Padding(
      padding: const EdgeInsets.only( top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(

            alignment: Alignment.center,
child: ImageFade(
            width: 250,

            // whenever the image changes, it will be loaded, and then faded in:
            image: AssetImage("assets/img.png"),

            // slow fade for newly loaded images:
            duration: const Duration(milliseconds: 900),

            // if the image is loaded synchronously (ex. from memory), fade in faster:
            syncDuration: const Duration(milliseconds: 150),

            // supports most properties of Image:
            alignment: Alignment.center,
            fit: BoxFit.cover,

            // shown behind everything:
            placeholder: Container(
              color: Colors.transparent,
              alignment: Alignment.center,
              child: const Icon(Icons.photo, color: Colors.white30, size: 128.0),
            ),

            // shows progress while loading an image:
            loadingBuilder: (context, progress, chunkEvent) =>
                Center(child: CircularProgressIndicator(value: progress)),

            // displayed when an error occurs:
            errorBuilder: (context, error) => Container(
              color: const Color(0xFF6F6D6A),
              alignment: Alignment.center,
              child: const Icon(Icons.warning, color: Colors.black26, size: 128.0),
            ),
          )
),
         TextWidget(text: "Harmony", color: Color(0xff335571).withOpacity(0.4), fontSize: 30, fontFamily: "Monteserrat", fontWeight: FontWeight.w700, textAlign: TextAlign.center),
         TextWidget(text: "Discover. Listen. Enjoy.", color: Colors.black, fontSize: 30, fontFamily: "Monteserrat", fontWeight: FontWeight.w400, textAlign: TextAlign.center)
         TextWidget(text: "Explore new music, listen to your favorites, and enjoy the ultimate music experience with our app", color: Colors.black, fontSize: 20, fontFamily: "Monteserrat", fontWeight: FontWeight.w400, textAlign: TextAlign.center),
        ],
      ),
    ) ,
      backgroundColor:  Color(0xfff5f5f7),
  );// TODO: implement build
    throw UnimplementedError();
  }
  
}




