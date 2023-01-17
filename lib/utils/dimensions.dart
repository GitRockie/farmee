import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView = screenHeight / 2.1;
  static double pageViewContainer = screenHeight / 3.05;
  static double pageViewTextContainer = screenHeight / 5.6;

  //dynamic height padding, margin: top bottom
  static double height5 = screenHeight / 134.4;
  static double height10 = screenHeight / 67.2;
  static double height15 = screenHeight / 44.8;
  static double height20 = screenHeight / 33.6;
  static double height30 = screenHeight / 22.4;
  static double height45 = screenHeight / 14.93;

  //dynamic width padding, margin: right, left
  static double width5 = screenWidth / 72;
  static double width10 = screenWidth / 36;
  static double width15 = screenWidth / 24;
  static double width20 = screenWidth / 18;
  static double width30 = screenWidth / 12;
  static double width45 = screenWidth / 8;

  static double font18 = screenHeight / 37.3;

  static double radius5 = screenHeight / 134.4;
  static double radius15 = screenHeight / 44.8;
  static double radius20 = screenHeight / 33.6;
  static double radius30 = screenHeight / 22.4;

  //icon size
  static double iconSize15 = screenHeight / 44.8;
  static double iconSize24 = screenHeight / 28;
}
