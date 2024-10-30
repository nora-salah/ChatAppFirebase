import 'package:chat_app_firebase/core/themes/colors_app.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static TextStyle textStyle18 = const TextStyle(
      color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400);
  static TextStyle textStyle15 = TextStyle(
      color: AppColors.green, fontSize: 50, fontWeight: FontWeight.bold);

  static TextStyle textStyle14 = const TextStyle(
      color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400);
  static TextStyle selectedLabelTextStyle = TextStyle(
      color: AppColors.green, fontSize: 15, fontWeight: FontWeight.bold);
  static TextStyle textStyle16GeryBold = TextStyle(
      color:AppColors.gery, fontSize: 16,fontWeight: FontWeight.bold,);


  static TextStyle textStyle16Gery = TextStyle(
    color:AppColors.gery, fontSize: 16);

  static TextStyle textStyle12White = TextStyle(
      color:AppColors.white, fontSize: 12);


}

