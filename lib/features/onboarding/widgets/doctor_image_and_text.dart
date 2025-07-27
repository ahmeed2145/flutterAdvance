import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutteradvance/core/themes/style.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 45,
          child: SvgPicture.asset('assets/images/Bg.svg')),
        Container(
          width: 400,
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withOpacity(0.0)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
            ),
          ),
          child: Image.asset('assets/images/onboardingdoctor.png'),
        ),

        Positioned(
        bottom: 40,
        right: 0,
        left: 0,
          child: Text(
            textAlign: TextAlign.center,
            'Best Doctor\nAppointment App',
            style: TextStyles.font32BlueBold.copyWith(
              height: 1.3
            )
          ),
        ),
      ],
    );
  }
}
