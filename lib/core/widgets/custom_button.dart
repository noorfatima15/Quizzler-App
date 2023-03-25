import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color? color;
  const CustomButton({Key? key, required this.text, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: MaterialButton(
      onPressed: () {},
      color: color ?? Colors.blue,
      padding: EdgeInsets.zero,
      height: 40,
      child: Text(text),
    ));
  }
}
