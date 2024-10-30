
import 'package:chat_app_firebase/core/functions/navigation.dart';
import 'package:flutter/material.dart';

import '../../../../../core/conatant/app_strings.dart';
import '../../../../../core/themes/colors_app.dart';
import '../../../../../core/themes/themes.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text(
        AppStrings.appName, // Ensure AppStrings.appName is defined
        style: Styles.textStyle18.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
      bottom:PreferredSize(preferredSize: Size.fromHeight(1.0), child: Divider()) ,
      actions: [
        Icon(Icons.search, size: 30, color: AppColors.black),
        PopupMenuButton<String>(
          onSelected: (value) {
            if (value == 'Option 2') {
             customNavigate(context, "/profileView");
            }
          },
          itemBuilder: (BuildContext context) {
            return [
              const PopupMenuItem<String>(
                value: 'Option 1',
                child: Text('New Group'),
              ),
              const PopupMenuItem<String>(
                value: 'Option 2',
                child: Text('Profile'),
              ),
              const PopupMenuItem<String>(
                value: 'Option 3',
                child: Text('Star '),
              ),
            ];
          },
          icon: const Icon(Icons.more_vert),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
