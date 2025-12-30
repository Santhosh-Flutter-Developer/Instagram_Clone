import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/core/constants/app_colors.dart';
import 'package:instagram_clone/core/constants/app_constants.dart';
import 'package:instagram_clone/core/constants/app_styles.dart';
import 'package:instagram_clone/presentation/pages/login/view/login.dart';
import 'package:instagram_clone/presentation/widgets/app_button.dart';
import 'package:instagram_clone/routes/app_routes.dart';

class MobileSignupBottomsheet extends StatelessWidget {
  final RxBool otp;
  const MobileSignupBottomsheet({super.key,required this.otp,});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: double.infinity,

      decoration: BoxDecoration(
              color: kDarkCardBackground,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        )
      ),
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Container(
                          height: 6,
                          width: 100,
                          decoration: BoxDecoration(
                            color: kWhite,
                          borderRadius: BorderRadius.circular(12),
                        
                          ),
                        ),
                      ),
                    ),
                   IconButton(onPressed:(){
                    Get.back();
                    }, icon: Icon(Icons.close,color: kWhite,)),
                    SizedBox(
                      height: kHeight*2,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("Are you trying to log in?",
                      style: kAppTextTheme.bodyLarge?.copyWith(
                        fontSize: 20.h
                      ),),
                    ),
                     SizedBox(
                      height: kHeight*2,
                    ),
                     Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:"This number is associated with an existing account. You can log in to it or create a new account with a new password.",style: kAppTextTheme.bodyLarge?.copyWith(
                                fontSize: 12.h,
                                
                              ),
                            ),
                            
                          ]
                        ),
                      ),
                    ),
                     SizedBox(
                      height: kHeight*2,
                    ),
                    
                            AppButton(
                              label: "Log in to an Existing Account",
                              onTap: (){
                            Get.back();
                                Go.to(Login());
                              },
                            ),
                            
                            SizedBox(
                              height: kHeight*2,
                            ),
                            
                            AppButton(
                          label: "Create new account",
                          onTap: (){
                            Get.back();
                            otp.value =true;
                          },
                          outline: true,
                        ),
                  ],
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}