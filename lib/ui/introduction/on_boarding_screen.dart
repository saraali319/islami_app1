import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../utils/routes.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    const pageDecoration = PageDecoration(
      pageColor: Color(0xff202020),

      titleTextStyle: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w700,
        color: Color(0xffE2BE7F),
      ),

      bodyTextStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Color(0xffE2BE7F),
        height: 1.6, // space between body lines
      ),

      titlePadding: EdgeInsets.only(top: 30),

      bodyPadding: EdgeInsets.only(
        top: 25, // space between title and body
        left: 20,
        right: 20,
        bottom: 30,
      ),

      contentMargin: EdgeInsets.symmetric(horizontal: 20),

      imagePadding: EdgeInsets.only(top: 10),
    );

    Widget buildImage(String path) {
      return Image.asset(
        path,
        height: 400,
        fit: BoxFit.contain,
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xff202020),

      body: SafeArea(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset(
                'assets/images/logo.png',
                width: width * 0.6,
                fit: BoxFit.contain,
              ),
            ),

            // Pages
            Expanded(
              child: IntroductionScreen(
                globalBackgroundColor: const Color(0xff202020),

                pages: [
                  PageViewModel(
                    decoration: pageDecoration,
                    title: "",
                    body: "Welcome To Islami App",
                    image: buildImage(
                      'assets/images/image1.png',
                    ),
                  ),

                  PageViewModel(
                    decoration: pageDecoration,
                    title: "Welcome To Islami",
                    body:
                    "We Are Very Excited To Have You In Our Community",
                    image: buildImage(
                      'assets/images/image2.png',
                    ),
                  ),

                  PageViewModel(
                    decoration: pageDecoration,
                    title: "Reading the quran",
                    body:
                    "Read, and your Lord is the Most Generous",
                    image: buildImage(
                      'assets/images/Frame 3.png',
                    ),
                  ),

                  PageViewModel(
                    decoration: pageDecoration,
                    title: "Bearish",
                    body:
                    "Praise the name of your Lord, the Most High",
                    image: buildImage(
                      'assets/images/image4.png',
                    ),
                  ),

                  PageViewModel(
                    decoration: pageDecoration,
                    title: "Holy quran Radio",
                    body:
                    "You can listen to the Holy quran Radio through the application for free and easily",
                    image: buildImage(
                      'assets/images/image5.png',
                    ),
                  ),
                ],

                onDone: () {
                  Navigator.pushNamed(context, AppRoutes.homeRouteName);
                },

                onSkip: () {},

               // showSkipButton: true,
                showBackButton: true,

                skipOrBackFlex: 0,
                nextFlex: 0,

                back: const Text(
                  'Back',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xffE2BE7F),
                  ),
                ),



                next: const Text(
                  'Next',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xffE2BE7F),
                  ),
                ),

                done: const Text(
                  'Finish',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xffE2BE7F),
                  ),
                ),

                curve: Curves.fastLinearToSlowEaseIn,

                controlsMargin: const EdgeInsets.all(16),

                controlsPadding: kIsWeb
                    ? const EdgeInsets.all(12)
                    : const EdgeInsets.fromLTRB(
                  8,
                  4,
                  8,
                  4,
                ),

                dotsDecorator: const DotsDecorator(
                  size: Size(10, 10),
                  color: Color(0xff707070),
                  activeColor: Color(0xffE2BE7F),
                  activeSize: Size(22, 10),

                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                ),

                dotsContainerDecorator: const BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}