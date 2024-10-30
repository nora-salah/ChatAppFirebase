import 'package:chat_app_firebase/core/themes/colors_app.dart';
import 'package:chat_app_firebase/core/themes/themes.dart';
import 'package:chat_app_firebase/features/home/presentation/view_model/widgets/custom_app_bar.dart';
import 'package:chat_app_firebase/features/home/presentation/view_model/widgets/custom_floating_action_button.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(),
        floatingActionButton: const CustomFloatingActionButton(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Expanded(child:
               ListView.separated(
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Container(
                                width: 60.0,
                                height: 60.0,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.gery),
                                child: Icon(
                                  Icons.person,
                                  color: AppColors.white,
                                  size: 35,
                                )),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "rowan",
                                  style: Styles.textStyle18
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                                const Text("# 0102749931"),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Text("12:00 PM"),
                                Container(
                                    width: 25.0,
                                    height: 25.0,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColors.green),
                                    child: Center(
                                      child: Text("2",style: Styles.textStyle12White,

                                      ),
                                    ),),
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
                      itemCount: 3)
            ,
          ),
        ));
  }
}
