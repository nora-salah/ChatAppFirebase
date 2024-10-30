import 'package:chat_app_firebase/core/themes/colors_app.dart';
import 'package:chat_app_firebase/core/themes/themes.dart';
import 'package:flutter/material.dart';

import '../../../../core/conatant/app_assets.dart';
import '../../../../core/conatant/app_strings.dart';
import '../../../../core/functions/navigation.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    delayedNavigate(context, "/signIn");
  }

  void delayedNavigate(context, path) {
    Future.delayed(const Duration(seconds: 3), () {
      customNavigate(context, path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.offWhite,
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              SizedBox(
                  height: 220,
                  width: 280,
                  child: Image(
                    image: AssetImage(
                      AppAssets.logo,
                    ),
                  )),
              Text(
                AppStrings.appName,
                style: Styles.textStyle15,
              ),
              SizedBox(
                height: 75,
              ),
              Text(
                AppStrings.theBest,
                style: Styles.textStyle18,
              ),
            ],
          ),
        ));
  }
}
