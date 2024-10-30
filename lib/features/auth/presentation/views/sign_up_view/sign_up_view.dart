import 'package:chat_app_firebase/core/functions/navigation.dart';
import 'package:flutter/material.dart';

import '../../../../../core/conatant/app_assets.dart';
import '../../../../../core/conatant/app_strings.dart';
import '../widgets/custom_btn.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_text_widget.dart';
import '../widgets/have_an_account_widget.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

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
                  height: 220, width: 280, child: Image.asset(AppAssets.logo)),
              CustomTextWidget(
                text: AppStrings.registerToNewAccount,
              ),
              CustomTextFormField(
                labelText: AppStrings.name,
                hintText: AppStrings.enterYourName,
                prefixIcon: Icon(Icons.person),
              ),
              CustomTextFormField(
                labelText: AppStrings.email,
                hintText: AppStrings.enterYourEmail,
                prefixIcon: Icon(Icons.email),
              ),
              CustomTextFormField(
                labelText: AppStrings.phone,
                hintText: AppStrings.enterYourPhone,
                prefixIcon: Icon(Icons.phone),
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
                text: AppStrings.signUp,
                onPressed: () {
                  customNavigate(context, "/homeNavBar");
                },
              ),
              SizedBox(
                height: 30,
              ),
              HaveAnAccountWidget(
                  text1: AppStrings.alreadyHaveAnAccount,
                  text2: AppStrings.logIn)
            ],
          ),
        ),
      ),
    );
  }
}
