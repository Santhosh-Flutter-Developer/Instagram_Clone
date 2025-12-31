import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/core/constants/app_colors.dart';
import 'package:instagram_clone/core/constants/app_constants.dart';
import 'package:instagram_clone/core/constants/app_styles.dart';
import 'package:instagram_clone/presentation/widgets/app_button.dart';
import 'package:instagram_clone/presentation/widgets/app_text_field.dart';

class MobileConfirmSms extends StatelessWidget {
  final RxBool smsLink;
  final RxBool multipleAccount;
  final RxBool anotherOption;
  final RxBool confirmSms;
  const MobileConfirmSms({super.key, required this.smsLink,required this.multipleAccount,required this.anotherOption,required this.confirmSms});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(onPressed: (){
               smsLink.value=false;
               multipleAccount.value = true;
               anotherOption.value=false;
               confirmSms.value= false;
              }, icon: Icon(Icons.arrow_back_ios,color: kWhite,)),
              SizedBox(
                height: kHeight*2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text("Confirm your account",
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
                        text:"We sent a code via SMS. Enter that code to confirm your account.",style: kAppTextTheme.bodyLarge?.copyWith(
                          fontSize: 12.h,
                          
                        ),
                      ),
                      TextSpan(
                        text: "\nCan't confirm account?",style: kAppTextTheme.bodyLarge?.copyWith(
                          fontSize: 12.h,
                          color: kSelectedColor,
                        ),
                        recognizer: TapGestureRecognizer()
              ..onTap = () {
              },
                      ),
                    ]
                  ),
                ),
              ),
               SizedBox(
                height: kHeight*2,
              ),
              AppTextField(
                        label: "Enter code",
                        textEditingController: TextEditingController(),
                        hintText:"Enter code",
                    
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
                         
                        },
                        child: Padding(
                          padding:  EdgeInsets.all(kHeight*2),
                          child: Center(child: Text("Send code again")),
                        ),
                      ),
                    
            ],
          ),
        )
      );
  }
}