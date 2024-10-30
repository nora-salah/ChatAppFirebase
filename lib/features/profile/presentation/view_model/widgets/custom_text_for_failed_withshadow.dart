import 'package:chat_app_firebase/core/themes/colors_app.dart';
import 'package:flutter/material.dart';

import '../../../../../core/themes/themes.dart';
import '../../../../auth/presentation/views/widgets/custom_text_field.dart';

class CustomTextFormFieldWithShadow extends StatelessWidget {
  const CustomTextFormFieldWithShadow(
      {super.key,
        required this.labelText,
        this.onChanged,
        this.onFieldSubmitted,
        this.prefixIcon,
        this.hintText, this.obscureText,
      });

  final String labelText;
  final String? hintText;

  final Function(String)? onChanged;

  final Function(String)? onFieldSubmitted;
  final bool? obscureText;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, left: 8.0, top: 15,bottom: 20),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // Grey shadow color
        offset: Offset(0, 8), // Set the offset
        blurRadius: 15, // Set the blur radius
        spreadRadius: 7,),
          ],
        ),
        child: TextFormField(
          validator: (value) {
            if (value!.isEmpty) {
              return "This field is required";
            } else {
              return null;
            }
          },
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted,
          obscureText: obscureText ?? false,
          decoration: InputDecoration(
            labelText: labelText,
            hintText: hintText,
            filled: true,
            fillColor: AppColors.white,
            labelStyle: Styles.textStyle18.copyWith(fontSize: 16),
            prefixIcon: prefixIcon,
            border: getBorderStyle(),
            focusedBorder: getBorderStyle2(),
          ),
        ),
      ),
    );
  }
}
