import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutteradvance/core/themes/style.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset
        ('assets/images/docdoc_logo.svg',
         width: 30),
        SizedBox(width: 6.w),
        Text(
          'Docdoc',
          style:TextStyles.font24Blac700Weight
        ),
      ],
    );
  }
}
