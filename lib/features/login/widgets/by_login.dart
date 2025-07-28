import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutteradvance/core/themes/style.dart';

class ByLogin extends StatelessWidget {
  const ByLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: TextStyles.font11DarkWhitereguler.copyWith(fontSize: 14.sp),
          ),
          TextSpan(
            text: ' Terms & Conditions ',
            // يكبر الخط
            style: TextStyles.font11lightBlackreguler.copyWith(fontSize: 14.sp),
          ),
          TextSpan(
            text: 'and ',
            style: TextStyles.font11DarkWhitereguler
                .copyWith(fontSize: 14.sp)
                .copyWith(height: 1.5.h),
          ),
          TextSpan(
            text: ' PrivacyPolicy.',
            style: TextStyles.font11lightBlackreguler.copyWith(fontSize: 12.sp) .copyWith(height: 1.15.h),
          ),
        ],
      ),
    );
  }
}
