import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/app_styles.dart';



class AppTextField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final String? hintText;
  final String? label;
  final IconData? prefixIcon;
  const AppTextField({super.key,this.label,this.textEditingController,this.hintText,this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
                 label??"",
                  style: kAppTextTheme.bodyLarge
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
          SizedBox(
            height: size.height / 13,
            child: TextField(
              controller: textEditingController,
              style: kAppTextTheme.bodyLarge,
              maxLines: 1,
              keyboardType: TextInputType.emailAddress,
              cursorColor: const Color(0xFF151624),
              decoration: InputDecoration(
                hintText: hintText??"",
                hintStyle: kAppTextTheme.bodyLarge,
                filled: true,
                fillColor: textEditingController!.text.isEmpty
                    ? const Color.fromRGBO(248, 247, 251, 1)
                    : Colors.transparent,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: textEditingController!.text.isEmpty
                          ? Colors.transparent
                          : const Color(0xFF1aa351),
                    )),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color:  Color(0xFF1aa351),
                    )),
                prefixIcon: Icon(
                 prefixIcon?? Icons.mail_outline_rounded,
                  color: textEditingController!.text.isEmpty
                      ? const Color(0xFF151624).withOpacity(0.5)
                      : const Color(0xFF1aa351),
                  size: 16,
                ),
               
              ),
            ),
          ),
        ],
      ),
    );
  }
}