import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/presentation/pages/signup/widgets/mobile_password_setup.dart';
import 'package:instagram_clone/presentation/pages/signup/widgets/mobile_signup_otp_widget.dart';
import 'package:instagram_clone/presentation/pages/signup/widgets/mobile_signup_widget.dart';

class MobileSignup extends StatelessWidget {
  const MobileSignup({super.key});

  @override
  Widget build(BuildContext context) {
      RxBool swap =false.obs;
      RxBool otp =false.obs;
      RxBool confirm = false.obs;
    return Scaffold(
      body:Obx(()=> otp.value==true?
      MobileSignupOtpWidget(
        otp:otp,
        confirm: confirm,
      ):confirm.value==true?MobilePasswordSetup(otp: otp, confirm: confirm)
       :MobileSignupWidget(
        swap: swap,
        otp: otp,
      ))
    );
  }
}