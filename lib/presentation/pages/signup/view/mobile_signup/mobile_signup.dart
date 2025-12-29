import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/core/constants/app_colors.dart';
import 'package:instagram_clone/core/constants/app_constants.dart';
import 'package:instagram_clone/core/constants/app_styles.dart';
import 'package:instagram_clone/presentation/pages/login/view/login.dart';
import 'package:instagram_clone/presentation/widgets/app_button.dart';
import 'package:instagram_clone/presentation/widgets/app_text_field.dart';
import 'package:instagram_clone/routes/app_routes.dart';

class MobileSignup extends StatelessWidget {
  const MobileSignup({super.key});

  @override
  Widget build(BuildContext context) {
      RxBool swap =false.obs;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Obx(()=>Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(onPressed: (){
                      Get.back();
                    }, icon: Icon(Icons.arrow_back_ios,color: kWhite,)),
                    SizedBox(
                      height: kHeight*2,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(swap.value?"What's your mobile number?":"What's your email address?",
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
                              text:swap.value==true?"Enter the mobile number on which you can be contacted. No one will see this on your profile.": "Enter the email address at which you can be contacted. No one will see this on your profile.",style: kAppTextTheme.bodyLarge?.copyWith(
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
                    AppTextField(
                              label: swap.value==true?"Mobile number":"Email address",
                              textEditingController: TextEditingController(),
                              hintText:swap.value==true?"Mobile number": "Email address",
                          
                            ),
                            if(swap.value)
                            Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:"You may receive WhatsApp and SMS notifications from us for security and login purposes.",style: kAppTextTheme.bodyLarge?.copyWith(
                                fontSize: 10.h,
                                color: kDisabledButtonBackground
                                
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
                              label: "Next",
                              onTap: (){},
                            ),
                            
                            SizedBox(
                              height: kHeight*2,
                            ),
                            
                            AppButton(
                          label: swap.value?"Sign up with email address":"Sign up with mobile number",
                          onTap: (){
                            swap.value =!swap.value;
                          },
                          outline: true,
                        ),
                  ],
                ),
              ),),
            ),
             GestureDetector(
                        onTap: (){
                          Go.to(Login());
                        },
                        child: Padding(
                          padding:  EdgeInsets.all(kHeight*2),
                          child: Text("I already have an account",style: kAppTextTheme.bodyLarge?.copyWith(
                            color: kSelectedColor,
                            fontSize: 10.h,
                          ),),
                        ),
                      ),
          ],
        ),
      ),
    );
  }
}