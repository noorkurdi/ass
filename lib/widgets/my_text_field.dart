import 'package:assist_app/core/utils/app_colors.dart';
import 'package:assist_app/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyTextFeild extends StatelessWidget {
  TextEditingController controller;
  final String? lableText;
  final String? hintText;

  MyTextFeild({required this.controller, this.lableText, this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: AppColors.secondaryColor,
      style: TextStyle(
        fontSize: 25,
        color: AppColors.secondaryColor,
        fontFamily: AppStrings.appFont,
      ),
      decoration: InputDecoration(
        hintStyle: TextStyle(fontSize: 20, color: AppColors.hintColor),
        hintText: hintText,
        labelText: lableText ?? '',
        labelStyle: TextStyle(
            color: AppColors.hintColor,
            fontSize: 20,
            fontFamily: AppStrings.appFont),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: AppColors.primaryColor,
            )),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.primaryColor,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
