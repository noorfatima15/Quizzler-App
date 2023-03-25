import 'package:flutter/material.dart';
import 'package:quizzler_app/core/constants/typography.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color? color;
  final VoidCallback onPressed;
  const CustomButton({Key? key, required this.text, this.color, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: color ?? Colors.blue,
      padding: EdgeInsets.zero,
      height: 40,
      child: Text(text, style: buttonTextStyle),
    );
  }
}
