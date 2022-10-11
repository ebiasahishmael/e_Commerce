import 'package:get/get.dart';

class Dimension {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  //Dynamic Height
  static double pageViewContainer = screenHeight / 3.54;
  static double pageViewTextContainer = screenHeight / 7.39;
  static double pageViewBigContainer = screenHeight / 2.71;

  static double height_10 = screenHeight / 81.31;
  static double height_13 = screenHeight / 62.55;
  static double height15 = screenHeight / 52.21;
  static double height20 = screenHeight / 40.66;
  static double height45 = screenHeight / 18.07;
  static double height30 = screenHeight / 27.10;
  static double height100 = screenHeight / 8.311;
  static double height120 = screenHeight / 6.78;
  static double height38 = screenHeight / 21.40;

  //Dynamic Width
  static double width10 = screenWidth / 39.27;
  static double width15 = screenWidth / 26.18;
  static double width13 = screenWidth / 30.21;
  static double width30 = screenWidth / 13.09;
  static double width45 = screenWidth / 8.73;
  static double width20 = screenWidth / 19.64;
  static double width120 = screenWidth / 3.27;
  static double width230 = screenWidth / 1.71;

  //Dynamic FontSize
  static double fontSize20 = screenHeight / 40.66;
  static double fontSize16 = screenHeight / 50.82;
  static double fontSize12 = screenHeight / 67.78;
  static double fontSize26 = screenHeight / 31.27;
  static double fontSize18 = screenHeight / 45.17;

  //Dynamic Radius
  static double radius20 = screenHeight / 40.66;
  static double radius30 = screenHeight / 27.10;
  static double radius5 = screenHeight / 63.62;
  static double radius15 = screenHeight / 54.21;

  //Dynamic Icon Size
  static double iconSize24 = screenHeight / 33.88;
  static double iconSize15 = screenHeight / 54.21;

  //Dynamic Top Items
  static double topItemImageSize24 = screenHeight / 2.32;
  static double topItemIconSize16 = screenHeight / 50.82;
}
