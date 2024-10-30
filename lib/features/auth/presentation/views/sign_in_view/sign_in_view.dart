import 'package:chat_app_firebase/core/conatant/app_assets.dart';
import 'package:chat_app_firebase/core/conatant/app_strings.dart';
import 'package:chat_app_firebase/core/functions/navigation.dart';
import 'package:chat_app_firebase/features/auth/presentation/views/widgets/custom_btn.dart';
import 'package:chat_app_firebase/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:chat_app_firebase/features/auth/presentation/views/widgets/have_an_account_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_text_widget.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height:30,
              ),
              SizedBox(
                  height: 280, width: 280, child: Image.asset(AppAssets.logo)),
              CustomTextWidget(
                text: AppStrings.logInToYourAccount,
              ),
              CustomTextFormField(
                labelText: AppStrings.email,
                hintText: AppStrings.enterYourEmail,
                prefixIcon: Icon(Icons.email),
              ),
              CustomTextFormField2(
                labelText: AppStrings.password,
                hintText: AppStrings.enterYourPassword,
                prefixIcon: Icon(Icons.lock),
                obscureText: true,
              ),
              SizedBox(
                height: 30,
              ),
              CustomBtn(
                text: AppStrings.logIn,
                onPressed: () {
                  customNavigate(context, "/signUp");
                },
              ),
              SizedBox(
                height: 30,
              ),
              HaveAnAccountWidget(
                  text1: AppStrings.dontHaveAnAccount,
                  text2: AppStrings.registerHere)
            ],
          ),
        ),
      ),
    );
  }
}
