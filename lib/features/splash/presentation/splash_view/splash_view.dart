import 'package:chat_app_firebase/core/utils/app_assets.dart';
import 'package:chat_app_firebase/core/utils/themes/themes.dart';
import 'package:flutter/material.dart';

import '../../../../core/functions/navigation.dart';
import '../../../../core/utils/app_string.dart';
import '../../../../core/utils/themes/asset_colors.dart';

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
                height: 200,
              ),
              SizedBox(
                  height: 300,
                  width: 300,
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
                height: 200,
              ),
              Text(
                AppStrings.theBest,
                style: Styles.textStyle24,
              ),
            ],
          ),
        ));
  }
}
