import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/core/constants/app_icons.dart';
import 'package:instagram_clone/presentation/widgets/app_password_field.dart';
import 'package:instagram_clone/presentation/widgets/app_text_field.dart';

class AppFormFields {

Widget fields({
  String? key,
  String? label,
  String? hintText,
  TextEditingController? controller,
  String? prefixIcon,

}){
return Column(children: [
appformFields(key,label,hintText,controller,prefixIcon)
],);
}

Widget appformFields(key,label,hintText,controller,prefixIcon){
  switch(key){
case "text":
case "email":
case "decimal":
case "numberwithnegative":
case "number":
return Obx(()=>AppTextField(
              label: label??"",
              textEditingController:controller?? TextEditingController(),
              hintText: hintText??"",
              prefixIcon: AppIcons.appIcon[prefixIcon],
            ));
case "pin":
return Obx(()=> AppPasswordField(
              label: label??"",
              textEditingController:controller?? TextEditingController(),
              hintText:hintText?? "",
             
            ));           
 default:
 return  Obx(()=>AppTextField(
             label: label??"",
              textEditingController:controller?? TextEditingController(),
              hintText: hintText??"",
               prefixIcon: AppIcons.appIcon[prefixIcon],
            )); 
  }
}

}