import 'package:chat_app_firebase/core/themes/themes.dart';
import 'package:flutter/material.dart';

import '../../../../../core/themes/colors_app.dart';


class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget(
      {super.key, required this.text1, required this.text2, this.onTap});
  final String text1, text2;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Align(
        child: Text.rich(TextSpan(children: [
          TextSpan(text: text1, style: Styles.textStyle18),
          TextSpan(
            text: text2,
            style: Styles.textStyle18
                .copyWith(color: AppColors.green),
          ),
        ])),
      ),
    );
  }
}
