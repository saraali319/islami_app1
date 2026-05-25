import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
class IntroScreen extends StatefulWidget {
  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, 'home');

    });

  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/intro/background.png',
            fit: BoxFit.cover,
            width: width,
          ),
          SafeArea(
            child:
            Center(
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Image.asset(
                   'assets/images/intro/Mosque.png',
                   width: width * 0.7,
                 ).zoomIn(),
                 Image.asset(
                   'assets/images/splash/branding.png',
                   width: width * 0.5,
                 ).zoomIn(),
               ],
              ) ,),),
          Center(
            child: Image.asset(
              'assets/images/intro/islami_logo.png',
              width: width * 0.4,
            ).zoomIn(
              duration: const Duration(milliseconds: 600),
            ),
          ),

                  Positioned(
                    left: 0,
                    top:height * 0.3,
                    child: Image.asset('assets/images/intro/left-shape.png').slideInRight(),
                  ),
                  Positioned(
                    right: 0,
                    top:height * 0.6,
                    child: Image.asset('assets/images/intro/right-shape.png').slideInLeft(),
                  ),
                  Positioned(
                    top: 0,
                    right: width*0.09,
                    child: Image.asset('assets/images/intro/lamp.png').slideDown(),
                  ),




        ],
      ),
    );
  }
}
