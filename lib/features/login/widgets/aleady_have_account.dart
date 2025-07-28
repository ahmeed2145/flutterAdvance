import 'package:flutter/material.dart';
import 'package:flutteradvance/core/themes/style.dart';

class AleadyHaveAccount extends StatelessWidget {
  const AleadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children:
       [
        TextSpan(text: 'Already have an account yet? ',
        style:TextStyles.font12lightBlackreguler ,),
         TextSpan(text: 'Sign Up',
        style:TextStyles.font12Bluereguler ,),
        
        ]),
    );
  }
}
