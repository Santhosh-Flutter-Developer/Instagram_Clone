import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/core/constants/app_constants.dart';
import 'package:instagram_clone/core/constants/app_images.dart';
import 'package:instagram_clone/presentation/pages/forgot_password/view/forgot_password.dart';
import 'package:instagram_clone/presentation/pages/landing_page/view/landing_page.dart';
import 'package:instagram_clone/presentation/pages/signup/view/signup.dart';
import 'package:instagram_clone/presentation/widgets/app_button.dart';
import 'package:instagram_clone/presentation/widgets/app_password_field.dart';
import 'package:instagram_clone/presentation/widgets/app_text_field.dart';
import 'package:instagram_clone/routes/app_routes.dart';

class MobileLogin extends StatelessWidget {
  const MobileLogin({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: height,
          width: width,
          child: Column(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                      width: 180.w,
                      child: Image.asset(AppImages.icInstaFontLogodark)),
                      SizedBox(
                        height: kHeight*2,
                      ),
                      AppTextField(
                        label: "Username, email address or mobile number",
                        textEditingController: TextEditingController(),
                        hintText: "Username, email address or mobile number",
                    
                      ),
                      AppPasswordField(
                        textEditingController: TextEditingController(),
                        label: "Password",
                        hintText: "Password",
                        obscureText: true,
                      ),
                       SizedBox(
                        height: kHeight*2,
                      ),
                      AppButton(
                        label: "Log in",
                        onTap: (){
                           Go.offAll(LandingPage());
                        },
                      ),
                       
                      GestureDetector(
                        onTap: (){
                          Go.to(ForgotPassword());
                        },
                        child: Padding(
                          padding:  EdgeInsets.all(kHeight*2),
                          child: Text("Forgotten password?"),
                        ),
                      ),
                    
                    
                      ],
                    ),
                  ),
                ),
              ),
              AppButton(
                    label: "Create new account",
                    onTap: (){
                       Go.to(Signup());
                    },
                    outline: true,
                  ),
                  SizedBox(
                    height: kHeight*2,
                  ),
            ],
          ),
        ),
      ),
    );
  }
}