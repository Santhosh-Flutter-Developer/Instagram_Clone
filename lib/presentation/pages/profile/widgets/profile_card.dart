import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/core/constants/app_colors.dart';
import 'package:instagram_clone/core/constants/app_constants.dart';
import 'package:instagram_clone/core/constants/app_images.dart';
import 'package:instagram_clone/core/constants/app_strings.dart';
import 'package:instagram_clone/core/constants/app_styles.dart';
import 'package:instagram_clone/presentation/pages/home/widgets/story_widget.dart';
import 'package:instagram_clone/presentation/widgets/app_outlined_button.dart';
import 'package:instagram_clone/presentation/widgets/app_svg.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Row(
              children: [
                StoryWidget(
                    yourStory: true,
                    userName: "Your story",
                    userLogo: kDummyLogo,
                  ),
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Santhosh",style: kAppTextTheme.bodyLarge?.copyWith(
                        fontSize: 18.w,
                        fontWeight: FontWeight.w600,
                      ),),
                      SizedBox(
                        height: kHeight*1.5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                           SizedBox(
                            width: 70,
                            child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("77",style: kAppTextTheme.bodyLarge?.copyWith(
                        fontSize: 16.w,
                        fontWeight: FontWeight.w600,
                      ),),
                      SizedBox(
                        height: kHeight*0.5,
                      ),
                      Text("posts",style: kAppTextTheme.bodyLarge?.copyWith(
                        fontSize: 14.w,
                      ),),
                            ],
                          )),
                          SizedBox(
                            width: 80,
                            child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("15",style: kAppTextTheme.bodyLarge?.copyWith(
                        fontSize: 16.w,
                        fontWeight: FontWeight.w600,
                      ),),
                      SizedBox(
                        height: kHeight*0.5,
                      ),
                      Text("followers",style: kAppTextTheme.bodyLarge?.copyWith(
                        fontSize: 14.w,
                      ),),
                            ],
                          )),
                          SizedBox(
                            width: kWidth*1.5,
                          ),
                           SizedBox(
                            width: 80,
                            child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("31",style: kAppTextTheme.bodyLarge?.copyWith(
                        fontSize: 16.w,
                        fontWeight: FontWeight.w600,
                      ),),
                      SizedBox(
                        height: kHeight*0.5,
                      ),
                      Text("following",style: kAppTextTheme.bodyLarge?.copyWith(
                        fontSize: 14.w,
                      ),),
                            ],
                          ))
                        ],
                      )
                    ],
                  ))  
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(child:  AppOutlinedButton(
                                    label: "Edit profile",
                                    height: 40,
                                    outline: false,
                                    onTap: (){},
                                  ),),
                                  SizedBox(
                                    width: kWidth,
                                  ),
                   Expanded(child:  AppOutlinedButton(
                                    label: "Share profile",
                                    outline: false,
                                    height: 40,
                                    onTap: (){},
                                  ),),
                                   SizedBox(
                                    width: kWidth,
                                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: kPrimaryButtonBackground,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AppSvgImage(path: AppImages.icUserAdd,height: 20,width: 20,),
                    ),
                  )                                
                ],
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        );
  }
}