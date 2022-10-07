import 'package:assist_app/core/utils/app_colors.dart';
import 'package:assist_app/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyTextFeild extends StatelessWidget {
  TextEditingController controller;
  final String? lableText;
  final String? hintText;
  final Icon? icon;
  final TextInputType? textInputType;
  final bool? hideInput;
  final bool? readOnly;
  final VoidCallback? onTap;
  final bool? validator;
final bool? border;
final double? fontSize;
final Color? focusedBorderColor;
final double? focusedBorderWidth;

  MyTextFeild(
      {required this.controller,
      this.icon,
      this.lableText,
      this.hintText,
      this.textInputType,
      this.hideInput,
      this.readOnly,
      this.onTap,
      this.validator,
      this.border,
      this.fontSize,
      this.focusedBorderColor,
      this.focusedBorderWidth});

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      validator: validator == true
          ? (value) {
              if (value == null) {
                return "هذا الحقل مطلوب";
              } else if (value == "") {
                return "هذا الحقل مطلوب";
              } else {
                return null;
              }
            }
          : null,
          
      onTap: onTap,
      readOnly: readOnly ?? false,
      obscureText: hideInput ?? false,
      keyboardType: textInputType,
      controller: controller,
      cursorColor: AppColors.secondaryColor,
      
      style: TextStyle(
        
        fontSize: fontSize,
        color: AppColors.secondaryColor,
        fontFamily: AppStrings.appFont,
      ),
      decoration: InputDecoration(
        
        suffixIcon: icon,
        suffixIconColor: AppColors.secondaryColor,
        hintStyle: TextStyle(fontSize: 20, color: AppColors.hintColor),
        hintText: hintText,
        labelText: lableText ?? '',
        labelStyle: TextStyle(
        
            color: AppColors.hintColor,
            fontSize: fontSize,
            fontFamily: AppStrings.appFont),
        border:border==true? OutlineInputBorder(
        
          borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: AppColors.primaryColor,
            )):null,
        focusedBorder: border == true ?OutlineInputBorder(
          borderSide: BorderSide(
            width: focusedBorderWidth??2.5,
            color: focusedBorderColor??AppColors.primaryColor,
          ),
          borderRadius: BorderRadius.circular(15),
        ):null,
      
      ),
    );
  }
}
