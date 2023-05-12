import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  //One instance, needs factory
  static AppColors? _instance;
  factory AppColors() => _instance ??= AppColors._();

  AppColors._();

  static const primaryColor = Color(0xff53B175);
  static const darkGrey = Color(0xff7C7C7C);

  static const borderGrey = Color(0xff666666);
  static const widgetGrey = Color(0xffF2F2F7);
  static const headerGrey = Color(0xFFEEEEEE);
  static const buttonGrey = Color(0xFFCCCCCC);
  static const selectedGrey = Color(0xFF999999);
  static const footerGrey = Color(0xFFB7B7B7);

  static const lightBlue = Color(0xFFC9DAF8);
  static const lightGreen = Color(0xFFD9EAD3);
  static const lightGold = Color(0xFFFFF2CC);
  static const lightRed = Color(0xFFF4CCCC);
}
