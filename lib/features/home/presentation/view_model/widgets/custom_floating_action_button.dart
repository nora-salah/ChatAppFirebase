import 'package:flutter/material.dart';

import '../../../../../core/themes/colors_app.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor:AppColors.green ,
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Chat button pressed!'),
          ),
        );
      },
      child: Icon(
        Icons.chat,
        color: AppColors.white, // Customize the icon color
      ),
    );
  }
}
