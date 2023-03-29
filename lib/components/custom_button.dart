import 'package:flutter/material.dart';

import '../styles/color.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double width;
  const CustomButton({super.key, required this.text, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(color: white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
