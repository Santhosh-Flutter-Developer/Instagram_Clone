import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    return const Placeholder();
  }
}