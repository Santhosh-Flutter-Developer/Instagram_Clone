import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/core/constants/app_colors.dart';
import 'package:instagram_clone/core/constants/app_constants.dart';
import 'package:instagram_clone/core/constants/app_styles.dart';
import 'package:instagram_clone/presentation/widgets/app_button.dart';
import 'package:instagram_clone/presentation/widgets/app_text_field.dart';

class MobileCreatePassword extends StatelessWidget {
  final RxBool smsLink;
  final RxBool multipleAccount;
  final RxBool anotherOption;
  final RxBool confirmSms;
  final RxBool saveLogin;
  final RxBool confirmPassword;
  const MobileCreatePassword({super.key,required this.smsLink,required this.multipleAccount,required this.anotherOption,required this.confirmSms,required this.saveLogin,required this.confirmPassword});

  @override
  Widget build(BuildContext context) {
        final RxBool check = false.obs;
    return SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Obx(()=>Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(onPressed: (){
                    
                    }, icon: Icon(Icons.arrow_back_ios,color: kWhite,)),
                    SizedBox(
                      height: kHeight*2,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("Create a new password",
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
                              text: "Create a password with at least 6 letters and numbers. You'll need this password to log in to your account.",style: kAppTextTheme.bodyLarge?.copyWith(
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
                              label: "New password",
                              textEditingController: TextEditingController(),
                              hintText:"New password",
                          
                            ),
                      
                            SizedBox(
                              height: kHeight*2,
                            ),
                            AppButton(
                              label: "Continue",
                              onTap: (){
                              
                              },
                            ),
                            
                            SizedBox(
                              height: kHeight*2,
                            ),
                            
                            AppButton(
                          label: "Skip",
                          onTap: (){
                            
                          },
                          outline: true,
                        ),
                         Row(
                              children: [
                                Checkbox(value: check.value, onChanged: (val){
                                  check.value=!check.value;
                                },
                                side: BorderSide(
                                  color: kDisabledButtonBackground
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                  
                                ),
                                activeColor: kSelectedColor,),
                                Expanded(
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text:"Log out of other devices. Choose this if someone else used your account.",style: kAppTextTheme.bodyLarge?.copyWith(
                                            fontSize: 10.h,
                                            color: kDisabledButtonBackground
                                            
                                          ),
                                        ),
                                       
                                      ]
                                    ),
                                  ),
                                ),
                              ],
                            ),
                  ],
                ),
              ),),
            ),
             
          ],
        ),
      );
  }
}