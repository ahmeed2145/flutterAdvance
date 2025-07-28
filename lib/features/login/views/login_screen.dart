import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutteradvance/core/helpers/speacing.dart';
import 'package:flutteradvance/core/themes/style.dart';
import 'package:flutteradvance/core/widgets/app_text_button.dart';
import 'package:flutteradvance/core/widgets/app_text_from_faild.dart';
import 'package:flutteradvance/features/login/widgets/aleady_have_account.dart';
import 'package:flutteradvance/features/login/widgets/by_login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isScureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back', style: TextStyles.font24BlueBold),
                verticalSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14GrayReguler,
                ),
                verticalSpace(36),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      AppTextFromFaild(hintText: 'Email'),
                      verticalSpace(20),
                      AppTextFromFaild(
                        hintText: 'Password',
                        isScure: isScureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isScureText = !isScureText;
                            });
                          },
                          child: Icon(
                            isScureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                      verticalSpace(24),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forget Password?',
                          style: TextStyles.font14Bluereguler,
                        ),
                      ),
                      verticalSpace(20),
                      AppTextButton(
                        buttonText: 'login',
                        onPressed: () {},
                        buttonWidth: 460.w,
                        buttonHeight: 60.h,
                        borderRadius: 16,
                      ),

                      verticalSpace(20),

                      ByLogin(),
                      verticalSpace(20),
                      AleadyHaveAccount(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
