import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:ui';
import 'package:phuble/Themes/SizeConfig.dart';

class FontConfig {
  static String logoFont = "Roboto-Bold";
  static String regular = "Roboto-Regular";
  static String bold = "Roboto-Bold";
}

class ColorConfig {
  static Color primarycolor = HexColor("#00897b");
  static Color primarycolor1 = Colors.white;
  static Color bodytext = HexColor("#333333");
  static Color errorColor = Color.fromRGBO(255, 23, 68, 1);
}

class Sizeconfig {
  static double tiny = 1.5 * SizeConfig.textMultiplier;
  static double small = 1.85 * SizeConfig.textMultiplier;
  static double medium = 2 * SizeConfig.textMultiplier;
  static double compact = 2.25 * SizeConfig.textMultiplier;
  static double large = 2.5 * SizeConfig.textMultiplier;
  static double huge = 3 * SizeConfig.textMultiplier;
  static double higantic = 4.5 * SizeConfig.textMultiplier;
}

class TextConfig {
  static TextStyle head = TextStyle(
      fontFamily: FontConfig.bold,
      fontSize: Sizeconfig.huge,
      color: ColorConfig.primarycolor);
  static TextStyle head1 = TextStyle(
      fontFamily: FontConfig.bold,
      fontSize: Sizeconfig.huge,
      color: ColorConfig.bodytext);

  static TextStyle body = TextStyle(
      fontFamily: FontConfig.regular,
      fontSize: Sizeconfig.large,
      color: ColorConfig.bodytext);
  static TextStyle body1 = TextStyle(
      fontFamily: FontConfig.regular,
      fontSize: Sizeconfig.compact,
      color: ColorConfig.bodytext);
  static TextStyle body2 = TextStyle(
      fontFamily: FontConfig.bold,
      fontSize: Sizeconfig.large,
      color: ColorConfig.bodytext);
  static TextStyle body3 = TextStyle(
      fontFamily: FontConfig.regular,
      fontSize: Sizeconfig.small,
      color: ColorConfig.bodytext);
  static TextStyle body4 = TextStyle(
      fontFamily: FontConfig.regular,
      fontSize: Sizeconfig.huge,
      color: Colors.grey);
  static TextStyle body5 = TextStyle(
      fontFamily: FontConfig.regular,
      fontSize: Sizeconfig.small,
      color: Colors.grey);
  static TextStyle title1 = TextStyle(
      fontFamily: FontConfig.bold,
      fontSize: Sizeconfig.higantic,
      color: ColorConfig.bodytext);
  static TextStyle textInput = TextStyle(
      fontFamily: FontConfig.regular,
      fontSize: Sizeconfig.large,
      color: ColorConfig.bodytext);
  static TextStyle text1 = TextStyle(
      fontFamily: FontConfig.regular,
      fontSize: Sizeconfig.medium,
      color: ColorConfig.bodytext);
  static TextStyle button = TextStyle(
      fontFamily: FontConfig.regular,
      fontSize: Sizeconfig.large,
      color: Colors.white);
  static TextStyle liketext = TextStyle(
      fontFamily: FontConfig.regular,
      fontSize: Sizeconfig.compact,
      color: Colors.grey);
}
