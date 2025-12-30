import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/presentation/pages/forgot_password/widgets/mobile_forgot_password_widget.dart';
import 'package:instagram_clone/presentation/pages/forgot_password/widgets/mobile_multiple_account.dart';


class MobileForgotPassword extends StatelessWidget {
  const MobileForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool swap =false.obs;
    RxBool multipleAccount = false.obs;
    RxBool anotherOption = false.obs;
    return Scaffold(
      body:Obx(()=>multipleAccount.value==true?MobileMultipleAccount(
        swap: swap,
        multipleAccount: multipleAccount,
      ): MobileForgotPasswordWidget(swap: swap,
      multipleAccount: multipleAccount,
      )
    ));
  }
}