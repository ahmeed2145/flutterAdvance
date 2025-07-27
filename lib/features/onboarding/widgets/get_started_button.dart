import 'package:flutter/material.dart';
import 'package:flutteradvance/core/helpers/extensions.dart';
import 'package:flutteradvance/core/routing/routs.dart';
import 'package:flutteradvance/core/themes/style.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {  
        context.pushName(Routs.loginScreen);
      },
      child: Text(
        'Get Started',
        style: TextStyles.font16WhiteSemiBold,
      ),
    );
  }
}
