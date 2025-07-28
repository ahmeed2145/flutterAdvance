import 'package:flutter/material.dart';
import 'package:flutteradvance/core/themes/colors.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    this.borderRadius,
    this.bgColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.buttonWidth,
    this.buttonHeight,
    required this.buttonText,
    required this.onPressed,
    this.textStyle,
  });

  final double? borderRadius;
  final Color? bgColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final TextStyle? textStyle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            bgColor ?? ColorsManage.mainBlue,
          ),
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(
              horizontal: horizontalPadding ?? 16.0,
              vertical: verticalPadding ?? 12.0,
            ),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 12.0),
            ),
          ),
        ),
        child: Text(
          buttonText,
          style:
              textStyle ?? const TextStyle(color: Colors.white, fontSize: 16.0),
        ),
      ),
    );
  }
}
