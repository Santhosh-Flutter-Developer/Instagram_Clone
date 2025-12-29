import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/app_styles.dart';


class AppPasswordField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final bool? obscureText;
  final Function()? obscureTextOnTap;
  final String? hintText;
  final String? label;
  const AppPasswordField({super.key,this.textEditingController,this.label,this.hintText,this.obscureTextOnTap,this.obscureText});

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Text(
                 label??"",
                  style:kAppTextTheme.bodyLarge
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
          Container(
            height: size.height / 13,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color.fromRGBO(248, 247, 251, 1),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.lock_outline_rounded,
                    size: 16,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextField(
                      controller: textEditingController,
                      style: kAppTextTheme.bodyLarge,
                      cursorColor: const Color(0xFF151624),
                      obscureText: obscureText??false,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        hintText:hintText??"",
                        hintStyle: kAppTextTheme.bodyLarge,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  textEditingController!.text.isEmpty
                      ? const Center()
                      : InkWell(
                        onTap:obscureTextOnTap?? (){
                          
                        },
                        child: Container(
                            height: 30,
                            width: 60,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(249, 225, 224, 1),
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                  color: const Color.fromRGBO(254, 152, 121, 1),
                                )),
                            child: Text(
                              'View',
                              textAlign: TextAlign.center,
                              style: kAppTextTheme.bodyLarge?.copyWith( 
                                fontSize: 12.0,
                                color:  const Color(0xFFFE9879),
                                 fontWeight: FontWeight.w500,
                              ),
                              
                            ),
                          ),
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