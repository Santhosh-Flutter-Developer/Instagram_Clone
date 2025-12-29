import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/core/constants/app_colors.dart';
import 'package:instagram_clone/core/constants/app_constants.dart';
import 'package:instagram_clone/core/constants/app_styles.dart';
import 'package:instagram_clone/presentation/widgets/app_button.dart';
import 'package:instagram_clone/presentation/widgets/app_text_field.dart';


class MobileForgotPassword extends StatelessWidget {
  const MobileForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool swap =false.obs;
    return Scaffold(
      body: SafeArea(
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
                child: Text("Find your account",
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
                        text:swap.value==true?"Enter your mobile number.": "Enter your email address or username.",style: kAppTextTheme.bodyLarge?.copyWith(
                          fontSize: 12.h,
                          
                        ),
                      ),
                      TextSpan(
                        text: "\nCan't reset your password?",style: kAppTextTheme.bodyLarge?.copyWith(
                          fontSize: 12.h,
                          color: kSelectedColor,
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
                        label: swap.value==true?"Mobile number":"Email address or username",
                        textEditingController: TextEditingController(),
                        hintText:swap.value==true?"Mobile number": "Email address or username",
                    
                      ),
                      SizedBox(
                        height: kHeight*2,
                      ),
                      AppButton(
                        label: "Continue",
                        onTap: (){},
                      ),
                      GestureDetector(
                        onTap: (){
                         swap.value=!swap.value;
                        },
                        child: Padding(
                          padding:  EdgeInsets.all(kHeight*2),
                          child: Center(child: Text(swap.value==true?"Find by email address or username":"Find by mobile number")),
                        ),
                      ),
                      SizedBox(
                        height: kHeight*2,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: [
                            Expanded(child: Container(
                              height: 1,
                              color: kDisabledButtonBackground,
                            )),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text("OR",style: kAppTextTheme.bodyLarge?.copyWith(
                                color: kDisabledButtonBackground
                              ),),
                            ),
                             Expanded(child: Container(
                              height: 1,
                              color: kDisabledButtonBackground,
                            )),
                            
                          ],
                        ),
                      ),
                       SizedBox(
                        height: kHeight*2,
                      ),
                      AppButton(
                    label: "Log in With Facebook",
                    onTap: (){},
                    outline: true,
                  ),
            ],
          ),
        ),),
      ),
    );
  }
}