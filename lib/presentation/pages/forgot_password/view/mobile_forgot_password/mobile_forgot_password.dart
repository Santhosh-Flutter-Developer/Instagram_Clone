import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/presentation/pages/forgot_password/widgets/mobile_confirm_sms.dart';
import 'package:instagram_clone/presentation/pages/forgot_password/widgets/mobile_create_password.dart';
import 'package:instagram_clone/presentation/pages/forgot_password/widgets/mobile_forgot_password_widget.dart';
import 'package:instagram_clone/presentation/pages/forgot_password/widgets/mobile_forgot_sms_setup.dart';
import 'package:instagram_clone/presentation/pages/forgot_password/widgets/mobile_multiple_account.dart';
import 'package:instagram_clone/presentation/pages/forgot_password/widgets/mobile_save_login_info.dart';
import 'package:instagram_clone/presentation/pages/forgot_password/widgets/mobile_sms_link.dart';


class MobileForgotPassword extends StatelessWidget {
  const MobileForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool swap =false.obs;
    RxBool multipleAccount = false.obs;
    RxBool anotherOption = false.obs;
    RxBool smsLink = false.obs;
    RxBool confirmSms = false.obs;
    RxBool saveLogin = false.obs;
    RxBool confirmPassword = false.obs;
    return Scaffold(
      body:Obx(()=>multipleAccount.value==true?MobileMultipleAccount(
        swap: swap,
        multipleAccount: multipleAccount,
        anotherOption: anotherOption,
        confirmSms:confirmSms,
      ):anotherOption.value==true?MobileForgotSmsSetup(
        multipleAccount: multipleAccount,
        anotherOption: anotherOption,
        smsLink: smsLink,
        confirmSms:confirmSms
      ):smsLink.value==true?MobileSmsLink(
        multipleAccount: multipleAccount,
        anotherOption: anotherOption,
        smsLink: smsLink,
        confirmSms:confirmSms,
      ) :confirmSms.value==true?MobileConfirmSms(smsLink: smsLink, multipleAccount: multipleAccount, anotherOption: anotherOption,confirmSms:confirmSms,saveLogin:saveLogin,confirmPassword:confirmPassword)
      :saveLogin.value==true?MobileSaveLoginInfo(smsLink: smsLink, multipleAccount: multipleAccount, anotherOption: anotherOption,confirmSms:confirmSms,saveLogin:saveLogin,confirmPassword:confirmPassword)
      :confirmPassword.value==true?MobileCreatePassword(smsLink: smsLink, multipleAccount: multipleAccount, anotherOption: anotherOption,confirmSms:confirmSms,saveLogin:saveLogin,confirmPassword:confirmPassword)  
        :MobileForgotPasswordWidget(swap: swap,
      multipleAccount: multipleAccount,
      )
    ));
  }
}