import 'package:flutter/material.dart';
import 'package:flutteradvance/core/routing/routs.dart';
import 'package:flutteradvance/features/login/login_screen.dart';
import 'package:flutteradvance/features/onboarding/view/on_boarding_screen.dart';

class AppRouter {
  Route  generateRoute(RouteSettings settings){
    final Arguments = settings.arguments;
switch(settings .name){
  case Routs.onBoardingScreen:
  return MaterialPageRoute(builder:  (_)=> OnBoardingScreen()
    
  
  );
 case Routs.loginScreen:
  return MaterialPageRoute(builder: (_)=> LoginScreen());
  
default : return MaterialPageRoute(builder:(_)=> Scaffold(
  body:  Center(
    child: Text('no route defint '),
  ),
) );
}
  }
}