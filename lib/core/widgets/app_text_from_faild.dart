import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutteradvance/core/themes/colors.dart';
import 'package:flutteradvance/core/themes/style.dart';

class AppTextFromFaild extends StatelessWidget {
  final InputBorder? focuseBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintTextStyle;
  final String hintText;
  final bool? isScure;
  final Widget? suffixIcon;
  final EdgeInsetsGeometry? contentPadding;

  const AppTextFromFaild({
    super.key,
    this.focuseBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintTextStyle,
    required this.hintText,
    this.isScure,
    this.suffixIcon,
    this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      decoration: InputDecoration(
        
        isDense: true,
        contentPadding:contentPadding?? EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focuseBorder ??OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorsManage.mainBlue,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16.h),
        ),
        enabledBorder: enabledBorder?? OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorsManage.lighterGray,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16.h),
        ),
        hintStyle:inputTextStyle?? TextStyles.font14lightGrayReguler,
        hintText: hintText,
        suffixIcon: suffixIcon,
        fillColor: ColorsManage.failld,
        filled: true
      ),
      obscureText:isScure?? false,
      style: TextStyles.font14GrayReguler,
      
    );
  }
}
