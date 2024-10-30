import 'package:chat_app_firebase/core/themes/themes.dart';
import 'package:flutter/material.dart';

import '../../../../../core/themes/colors_app.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.labelText,
    this.onChanged,
    this.onFieldSubmitted,
    this.prefixIcon,
    this.hintText,
    this.obscureText,
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
      padding: const EdgeInsets.only(right: 8.0, left: 8.0, top: 24),
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
          labelStyle: Styles.textStyle18.copyWith(fontSize: 16),
          prefixIcon: prefixIcon,
          border: getBorderStyle(),
          focusedBorder: getBorderStyle2(),
        ),
      ),
    );
  }
}

OutlineInputBorder getBorderStyle() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(color: AppColors.gery));
}

OutlineInputBorder getBorderStyle2() {
  return OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.primaryColor, width: 2.0));
}

class CustomTextFormField2 extends StatefulWidget {
  const CustomTextFormField2({
    super.key,
    required this.labelText,
    this.onChanged,
    this.onFieldSubmitted,
    this.hintText,
    this.obscureText = false, // Default to false
    this.prefixIcon,
    this.toogleVisibility,
  });

  final String labelText;
  final String? hintText;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final bool obscureText;
  final Widget? prefixIcon;
  final Function()? toogleVisibility;

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField2> {
  late bool _obscureText; // To manage the password visibility

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText; // Initialize obscureText
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, left: 8.0, top: 24),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return "This field is required";
          } else {
            return null;
          }
        },
        onChanged: widget.onChanged,
        onFieldSubmitted: widget.onFieldSubmitted,
        obscureText: _obscureText,
        // Use local state for visibility
        decoration: InputDecoration(
          labelText: widget.labelText,
          hintText: widget.hintText,
          labelStyle: Styles.textStyle18.copyWith(fontSize: 16),
          suffixIcon: widget.obscureText
              ? IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: _toggleVisibility, // Toggles visibility
                )
              : null,
          // Show toggle icon only for password fields
          prefixIcon: widget.prefixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: AppColors.gery),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.primaryColor, width: 2.0),
          ),
        ),
      ),
    );
  }

  // Toggles the visibility of the password
  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
}
