import 'package:chat_app_firebase/core/themes/themes.dart';
import 'package:flutter/material.dart';

import '../../../../../core/themes/colors_app.dart';


class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key, this.color, required this.text, this.onPressed});
  final Color? color;
  final String text;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? AppColors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          text,
          style: Styles.textStyle18
              .copyWith(fontWeight:FontWeight.bold ),
        ),
      ),
    );
  }
}


