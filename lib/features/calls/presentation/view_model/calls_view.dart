import 'package:chat_app_firebase/core/themes/colors_app.dart';
import 'package:chat_app_firebase/features/home/presentation/view_model/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../../core/conatant/app_assets.dart';
import '../../../../core/conatant/app_strings.dart';
import '../../../../core/themes/themes.dart';

class CallsView extends StatelessWidget {
  const CallsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.resent,
                  style: Styles.textStyle16GeryBold,
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(AppAssets.profile),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Nora Salah",
                                  style: Styles.textStyle18.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text(
                                  AppStrings.today10,
                                  style: Styles.textStyle16Gery,

                                ),
                              ],
                            ),
                            Spacer(),
                            Icon(
                              Icons.phone,
                              size: 30,
                              color: AppColors.gery,
                            )
                          ],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: 20,
                        );
                      },
                      itemCount: 8),
                ),
              ],
            )));
  }
}
