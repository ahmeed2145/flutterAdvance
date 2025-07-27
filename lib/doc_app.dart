import 'package:flutter/material.dart';
import 'package:flutteradvance/core/routing/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class DocApp extends StatelessWidget {
  const DocApp({super.key, required this.appRouter});
final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      
 designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
     child: MaterialApp(
      initialRoute: '/onBoardingScreen',
      debugShowCheckedModeBanner: false,
      title: "Doc App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
onGenerateRoute: appRouter.generateRoute,
     ), 
      
    );
  
  
  }
}