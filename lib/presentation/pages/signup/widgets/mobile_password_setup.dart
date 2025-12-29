import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/core/constants/app_colors.dart';
import 'package:instagram_clone/core/constants/app_constants.dart';
import 'package:instagram_clone/core/constants/app_styles.dart';
import 'package:instagram_clone/presentation/pages/login/view/login.dart';
import 'package:instagram_clone/presentation/widgets/app_button.dart';
import 'package:instagram_clone/presentation/widgets/app_password_field.dart';
import 'package:instagram_clone/routes/app_routes.dart';

class MobilePasswordSetup extends StatelessWidget {
  final RxBool otp;
  final RxBool confirm;
  const MobilePasswordSetup({super.key,required this.otp, required this.confirm});

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
                     otp.value=false;
                     confirm.value=false;
                    }, icon: Icon(Icons.arrow_back_ios,color: kWhite,)),
                    SizedBox(
                      height: kHeight*2,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("Create a password",
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
                              text:"Create a password with at least six letters or numbers. It should be something that others can't guess.",style: kAppTextTheme.bodyLarge?.copyWith(
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
                    AppPasswordField(
                              label: "Password",
                              textEditingController: TextEditingController(),
                              hintText:"Password",
                              obscureText: true,
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
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text:"Remember login info.",style: kAppTextTheme.bodyLarge?.copyWith(
                                          fontSize: 10.h,
                                          color: kDisabledButtonBackground
                                          
                                        ),
                                      ),
                                       TextSpan(
                                        text:"Learn more",style: kAppTextTheme.bodyLarge?.copyWith(
                                          fontSize: 10.h,
                                          color: kSelectedColor,
                                          
                                        ),
                                      ),
                                    ]
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: kHeight*2,
                            ),
                            AppButton(
                              label: "Next",
                              onTap: (){
                               
                              },
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
      );
  }
}