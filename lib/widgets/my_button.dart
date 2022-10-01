import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({
    required this.color,
    required this.title,
    required this.onPressed,
    this.wid,
  });

  final Color color;
  final String title;
  final VoidCallback onPressed;
  final double? wid;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Material(
        elevation: 5,
        color: color,
        borderRadius: BorderRadius.circular(15),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: wid ?? 200,
          height: 42,
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
