import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/core/constants/app_colors.dart';
import 'package:instagram_clone/core/constants/app_constants.dart';
import 'package:instagram_clone/core/constants/app_styles.dart';
import 'package:instagram_clone/presentation/widgets/app_button.dart';
import 'package:instagram_clone/presentation/widgets/app_text_field.dart';

class MobileSignupOtpWidget extends StatelessWidget {
  final RxBool otp;
  final RxBool confirm;
  const MobileSignupOtpWidget({super.key,required this.otp,required this.confirm});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                   IconButton(onPressed:(){
                      otp.value=false;
                    }, icon: Icon(Icons.arrow_back_ios,color: kWhite,)),
                    SizedBox(
                      height: kHeight*2,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("Enter the confirmation code",
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
                              text:"To confirm your account, enter the 6-digit code that we sent via WhatsApp to +919585038019.",style: kAppTextTheme.bodyLarge?.copyWith(
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
                    Row(
                      children: [
                        ...List.generate(6,(index)=>
                        Expanded(
                          child: AppTextField(
                                    label:"",
                                    maxLength: 1,
                                    textEditingController: TextEditingController(),
                                    hintText:"",
                                
                                  ),
                        )),
                      ],
                    ),
                           
                            SizedBox(
                              height: kHeight*2,
                            ),
                            AppButton(
                              label: "Next",
                              onTap: (){
                                otp.value=false;
                                confirm.value = true;
                              },
                            ),
                            
                            SizedBox(
                              height: kHeight*2,
                            ),
                            
                            AppButton(
                          label: "I didn't receive the code",
                          onTap: (){
                          },
                          outline: true,
                        ),
                  ],
                ),
              ),
            ),
            
          ],
        ),
      );
  }
}