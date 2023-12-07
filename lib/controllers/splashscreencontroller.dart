import 'package:get/get.dart';

class SplashScreenController {
  RxList bodyData = [
    {
      "image": "assets/img.png",
      "title": "Harmony Hub",
      "subTitle": "Discover,Listen,Enjoy",
      "description": "Explore new music listen to your favorite",
      "primaryColor": 0xff335571,
      "secondaryColor": 0xff707070,
      "buttonText": "Power up",
      "position": 0,
    },
    {
      "image": "assets/img_1.png",
      "title": "Tune Wave",
      "subTitle": "Where sound meets soul",
      "description": "Let the power of music touch your soul",
      "primaryColor": 0xff485045,
      "secondaryColor": 0xffC8D0C2,
      "buttonText": "Songs Picked",
      "position": 1,
    }
    , {
      "image": "assets/img_2.png",
      "title": "Rythimic beats",
      "subTitle": "Your gateway to the world of music",
      "description": "Step into a world of endless music",
      "primaryColor": 0xff858688,
      "secondaryColor": 0xff707070,
      "buttonText": "Speakers ready",
      "position": 2,
    },
    {
      "image": "assets/img_3.png",
      "title": "SoundSculpt",
      "subTitle": "Elevate your audio experience",
      "description": "Elevate your audio experience",
      "primaryColor": 0xffE5540,
      "secondaryColor": 0xffC8D0C2,
      "buttonText": "Song Picked",
      "position": 3,
    },
  ].obs;
  RxInt currentShowing = 0.obs;

  changeCurrentShowing() async {
    if (currentShowing.value == bodyData.length - 1) {

      currentShowing.value = 0;
    } else {

      currentShowing.value = currentShowing.value + 1;
    }
  }
}