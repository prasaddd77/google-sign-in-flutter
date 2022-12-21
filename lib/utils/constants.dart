import 'package:flutter/material.dart';

import '../model/card_item.dart';

class ImageAssets {
  static const _root = "assets/images";

  //List View Images
  static const String n = "$_root/N.png";
  static const String nInverted = "$_root/N-inverted.png";
  static const String n2 = "$_root/N-2.png";
  static const String bottle1 = "$_root/image-196.png";
  static const String bottle2 = "$_root/image-197.png";
  static const String bottle3 = "$_root/image-198.png";
}

enum RadioButtonValue { first, second }

class Palette {
  static const MaterialColor kToDark = MaterialColor(0xFF000000, <int, Color>{
    50: Color(0xFF000000),
    100: Color(0xFF000000),
    200: Color(0xFF000000),
    300: Color(0xFF000000),
    400: Color(0xFF000000),
    500: Color(0xFF000000),
    600: Color(0xFF000000),
    700: Color(0xFF000000),
    800: Color(0xFF000000),
    900: Color(0xFF000000),
  });
}

List<CardItem> items = [
  const CardItem(
    firstImage: "assets/images/N.png",
    secondImage: "assets/images/image-196.png",
  ),
  const CardItem(
    firstImage: "assets/images/N-inverted.png",
    secondImage: "assets/images/image-197.png",
  ),
  const CardItem(
    firstImage: "assets/images/N-2.png",
    secondImage: "assets/images/image-198.png",
  ),
];

List<Color> gradientColors1 = const [
  Color(0xFFF7F7F7),
  Color(0xFFDAB574),
  Color(0xFFF3A42D),
  Color(0xFFF87D34),
  Color(0xFFEC835F),
  Color(0xFFD1A49A),
];

List<Color> gradientColors2 = const [
  Color(0xFFF4F1E9),
  Color(0xFFECDFC6),
  Color(0xFFE0C38F),
  Color(0xFFE0B163),
  Color(0xFFECA942),
  Color(0xFFF49E2E),
  Color(0xFFF68D31),
  Color(0xFFF87E34),
  Color(0xFFF08253),
  Color(0xFFE7896A),
];
