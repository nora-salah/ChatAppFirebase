
import 'package:flutter/material.dart';

import '../../../../../core/themes/colors_app.dart';
import '../../../../../core/themes/themes.dart';

class CustomBtnWithIcon extends StatelessWidget {
  const CustomBtnWithIcon({super.key, this.color, required this.text, this.onPressed});
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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.save,color: AppColors.white,),
            Text(
              text,
              style: Styles.textStyle18
                  .copyWith(fontSize: 18, color: AppColors.white,fontWeight:FontWeight.bold ),
            ),
          ],
        ),
      ),
    );
  }
}
