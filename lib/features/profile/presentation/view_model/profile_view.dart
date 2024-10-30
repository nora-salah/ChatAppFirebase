import 'package:chat_app_firebase/features/profile/presentation/view_model/widgets/custom_button_withIcon.dart';
import 'package:chat_app_firebase/features/profile/presentation/view_model/widgets/custom_text_for_failed_withshadow.dart';
import 'package:flutter/material.dart';

import '../../../../core/conatant/app_assets.dart';
import '../../../../core/conatant/app_strings.dart';
import '../../../../core/themes/colors_app.dart';
import '../../../../core/themes/themes.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //
          title: Text(
            AppStrings.profile,
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(1.0), child: Divider()),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  width: 160.0,
                  height: 160.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.gery),
                  child: Stack(alignment: Alignment.bottomRight, children: [
                    CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage(AppAssets.profile)),
                    Positioned(
                      right: 0,
                      bottom: 15,
                      child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              color: AppColors.green,
                              borderRadius: BorderRadius.circular(20)),
                          child: Icon(
                            Icons.edit,
                            color: AppColors.white,
                            size: 20,
                          )),
                    ),
                  ])),
              Divider(),
          
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppStrings.name,style: Styles.textStyle14,),
                    CustomTextFormFieldWithShadow(labelText: AppStrings.name),
                    Text(AppStrings.phone,style: Styles.textStyle14,),

                    CustomTextFormFieldWithShadow(labelText: AppStrings.phone),
          SizedBox(
            height: 40,
          ),
                    CustomBtnWithIcon(text: AppStrings.saveProfile,onPressed: (){},)
          
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
