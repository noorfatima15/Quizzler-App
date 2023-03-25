import 'package:flutter/material.dart';

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
      child: Text(text),
    );
  }
}
