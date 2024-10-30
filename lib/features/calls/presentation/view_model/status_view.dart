import 'package:chat_app_firebase/core/conatant/app_assets.dart';
import 'package:chat_app_firebase/core/conatant/app_strings.dart';
import 'package:chat_app_firebase/features/home/presentation/view_model/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../../core/themes/colors_app.dart';
import '../../../../core/themes/themes.dart';

class StatusView extends StatelessWidget {
  const StatusView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(AppAssets.profile),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: AppColors.white),
                          child: Icon(
                            Icons.add_circle_outline_rounded,
                            color: AppColors.green,
                            size: 20,
                          )),
                    ),
                  ],
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.myStatus,
                      style: Styles.textStyle18
                          .copyWith(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      AppStrings.tabToAddStatusUpdate,
                      style: Styles.textStyle16GeryBold,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              AppStrings.resentUpdate,
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
                          backgroundColor: Colors.green,
                          child: CircleAvatar(
                            radius: 28,
                            backgroundImage: AssetImage(AppAssets.profile),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nora Salah",
                              style: Styles.textStyle18.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              "Today, 12:00 PM",
                              style: Styles.textStyle16Gery,
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 20,
                    );
                  },
                  itemCount: 5),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              AppStrings.viewedUpdate,
              style: Styles.textStyle16GeryBold,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
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
                      style: Styles.textStyle18
                          .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "To day,12:Am",
                      style: Styles.textStyle16GeryBold,
                    ),
                  ],
                ),
              ],
            ),
            /* Expanded(child:
            ListView.separated(
                itemBuilder: (context, index) {
                  return  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(AppAssets.profile),
                      ),                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nora Salah",
                            style: Styles.textStyle24
                                .copyWith(fontWeight: FontWeight.bold,fontSize: 20),
                          ),
                          Text("To day,12:Am",style: Styles.textStyle20,),
                        ],
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 20,
                  );
                },
                itemCount: 1)
              ,
            ),*/
          ],
        ),
      ),
    );
  }
}
