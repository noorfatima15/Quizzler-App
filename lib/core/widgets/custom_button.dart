import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: MaterialButton(
      onPressed: () {},
      padding: EdgeInsets.zero,
      height: 50,
      child: Text('Button'),
    ));
  }
}
