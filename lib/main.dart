import 'package:flutter/material.dart';
import 'package:islamy_app/ui/home/home_screen.dart';
import 'package:islamy_app/ui/introduction/intro_screen.dart';
import 'package:islamy_app/ui/introduction/on_boarding_screen.dart';
import 'package:islamy_app/utils/routes.dart';
import 'package:islamy_app/utils/themes/app_theme.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return MaterialApp(
  debugShowCheckedModeBanner: false,
theme: AppTheme.darkTheme,
  routes: {
    AppRoutes.introRouteName:(context)=>IntroScreen(),
    AppRoutes.homeRouteName:(context)=>HomeScreen(),
    AppRoutes.onBoardingRouteName:(context)=>OnBoardingScreen(),

  },
  initialRoute: AppRoutes.introRouteName,
);
  }

}