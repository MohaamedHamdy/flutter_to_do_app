// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:todo/core/utils/colors.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final double width;
  final double height;
  final double radius;
  final String text;
  final Color textColor;

  const CustomButton({
    Key? key,
    this.color = MyColors.mainColor,
    this.width = 180,
    this.height = 80,
    this.radius = 14.0,
    this.text = 'Done',
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              radius,
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style:
              Theme.of(context).textTheme.bodyLarge!.copyWith(color: textColor),
        ),
      ),
    );
  }
}
