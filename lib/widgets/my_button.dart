import 'package:assist_app/core/utils/app_colors.dart';
import 'package:assist_app/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton(
      {required this.primaryColor,
      required this.title,
      required this.onPressed,
      required this.minWid,
      required this.minHeight,
      required this.maxWid,
      required this.maxHeight,
      this.elevation,
      required this.textColor});

  final Color primaryColor;
  final Color textColor;
  final String title;
  final VoidCallback onPressed;
  final double minWid;
  final double minHeight;
  final double maxWid;
  final double maxHeight;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(minWid, minHeight),
        maximumSize: Size(maxWid, maxHeight),
        onPrimary: textColor,
        primary: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        textStyle: TextStyle(
          fontSize: 25,
          fontFamily: AppStrings.appFont,
        ),
      ),
      child: Text(title),
    );
  }
}
