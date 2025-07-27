import 'package:flutter/widgets.dart';

extension Navigation on BuildContext{
  Future<dynamic> pushName(String routeName,{Object? argument}){
    return Navigator.of (this).pushNamed(routeName ,arguments:  argument);
  }
    Future<dynamic> pushReplacementNamed(String routeName,{Object? argument}){
    return Navigator.of (this).pushReplacementNamed(routeName ,arguments:  argument);
  }

   void pop() => Navigator.of(this).pop();
}