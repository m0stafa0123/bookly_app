import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/style.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton({
    super.key,
    this.borderRadius,
    required this.buttonColor,
    required this.textColor,
    required this.buttonText,
  });
  final BorderRadius? borderRadius;
  final Color buttonColor;
  final Color textColor;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        child: Text(
          buttonText,
          style: Style.textStyle16.copyWith(
            color: textColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
