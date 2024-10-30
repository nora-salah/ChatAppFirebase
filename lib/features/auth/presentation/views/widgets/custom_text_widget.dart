import 'package:chat_app_firebase/core/themes/themes.dart';
import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Styles.textStyle18
          .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
    );
  }
}
