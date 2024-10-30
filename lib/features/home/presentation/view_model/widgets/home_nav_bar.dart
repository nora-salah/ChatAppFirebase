import 'package:chat_app_firebase/features/calls/presentation/view_model/calls_view.dart';
import 'package:chat_app_firebase/features/calls/presentation/view_model/status_view.dart';
import 'package:chat_app_firebase/features/home/presentation/view_model/home_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/conatant/app_strings.dart';
import '../../../../../core/themes/colors_app.dart';
import '../../../../../core/themes/themes.dart';

class HomeNavBar extends StatefulWidget {
  const HomeNavBar({super.key});

  @override
  State<HomeNavBar> createState() => _HomeNavBarState();
}

int _currentIndex = 0;

class _HomeNavBarState extends State<HomeNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: buildScreens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: AppColors.green,
        // Set the selected item color
        unselectedItemColor: Colors.grey,
        // Set the unselected item color

        selectedLabelStyle: Styles.selectedLabelTextStyle,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat, color: AppColors.green),
            label: AppStrings.chats,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tips_and_updates, color: AppColors.green),
            label: AppStrings.status,
          ),

          /// Phone
          BottomNavigationBarItem(
            icon: Icon(Icons.phone, color: AppColors.green),
            label: AppStrings.calls,
          ),

          /// Settings
        ],
      ),
    );
  }
}

List<Widget> buildScreens = [HomeView(),  StatusView(),CallsView(),];
