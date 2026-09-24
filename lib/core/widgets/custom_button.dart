import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.TextColor,
    required this.text,
    this.fontSize,
    this.borderRadius,
  });
  final Color backgroundColor;
  final Color TextColor;
  final String text;
  final double? fontSize;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadiusGeometry.circular(16),
          ),
        ),

        onPressed: () {},
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
            color: TextColor,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
