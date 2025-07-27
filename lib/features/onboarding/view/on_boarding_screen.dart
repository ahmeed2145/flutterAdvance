import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutteradvance/core/themes/colors.dart';
import 'package:flutteradvance/core/themes/style.dart';
import 'package:flutteradvance/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:flutteradvance/features/onboarding/widgets/doctor_image_and_text.dart';
import 'package:flutteradvance/features/onboarding/widgets/get_started_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: Column(
              children: [
                const DocLogoAndName(),
                const DoctorImageAndText(),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Text(
                        'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                        style: TextStyles.font13GrayRagular,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorsManage.mainBlue,
                          borderRadius: BorderRadius.circular(12),
                        ),

                        width: double.infinity,
                        child: GetStartedButton(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
