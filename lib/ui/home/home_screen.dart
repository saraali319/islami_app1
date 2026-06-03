import 'package:flutter/material.dart';

import '../../utils/themes/app_colors.dart';
import '../hadith/hadith_tab.dart';
import '../quran/quran_tab.dart';
import '../sebha/sebha_tab.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> _pages = [
    QuranTab(),
    HadithTab(),
    SebhaTab(),
    Container(color: Colors.green),
    Container(color: Colors.blue),
    QuranTab(),
    Container(color: Colors.yellow),
    Container(color: Colors.red),
  ];
List<String> images=[
  'assets/images/quran_backGround.png',
  "assets/images/taj-mahal-agra-india 2.png",
  'assets/images/sebha_back_ground.png',
  'assets/images/radio_back_ground.png',
  'assets/images/time_back_ground.png',
];
// i can also use map and key will be 0,1,2,3,4,5 bs 5aly balk en mmkn ykon nullable
//
  @override
  Widget build(BuildContext context) {
    return Stack(
      // this part show back ground images that change according to the selected pages based on index
      children: [
        Image.asset(
        images[selectedIndex],
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),

        Scaffold(
          // make scaffold transparent
          backgroundColor: Colors.transparent,
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(canvasColor: AppColors.gold),
            child: BottomNavigationBar(
              backgroundColor: AppColors.gold,
              type: BottomNavigationBarType.fixed,
              currentIndex: selectedIndex,
              selectedItemColor: AppColors.white,
              unselectedItemColor: AppColors.black,
              showUnselectedLabels: false,
              onTap: (index) {
                selectedIndex=index;
                setState(() {});

              },
              items: [
                _buildNavigationBar("assets/images/ic_quran.png", 0, "Quran"),
                _buildNavigationBar("assets/images/ic_hadeth.png", 1, "Hadeth"),
                _buildNavigationBar("assets/images/ic_sebha.png", 2, "Sebha"),
                _buildNavigationBar("assets/images/ic_radio.png", 3, "Radio"),
                _buildNavigationBar("assets/images/ic_time.png", 4, "Time"),

                // BottomNavigationBarItem(icon: _buildBottomNavigationBarIcon("assets/images/ic_quran.png", 0), label: "Quran"),
                // BottomNavigationBarItem(icon: _buildBottomNavigationBarIcon("assets/images/ic_hadeth.png", 1), label: "Hadeth"),
                // BottomNavigationBarItem(icon: _buildBottomNavigationBarIcon("assets/images/ic_sebha.png", 2), label: "Sebha"),
                // BottomNavigationBarItem(icon: _buildBottomNavigationBarIcon("assets/images/ic_radio.png", 3), label: "Radio"),
                // BottomNavigationBarItem(icon: _buildBottomNavigationBarIcon("assets/images/ic_time.png", 4), label: "Time"),
              ],

            ),
          ),
          body:Column(
            children: [
              Image.asset("assets/images/logo.png"),
              Expanded(child: _pages[selectedIndex]),
            ],
          )
        ),
      ],
    );
  }
  BottomNavigationBarItem _buildNavigationBar(String imagePath,int index,String label){
    return BottomNavigationBarItem(
      icon:_buildBottomNavigationBarIcon(imagePath, index),
      label: label,
    );
  }

  Widget _buildBottomNavigationBarIcon(String imagePath, int index) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: index == selectedIndex
          ? BoxDecoration(
              color: AppColors.black.withAlpha(60),
              borderRadius: BorderRadius.circular(100),
            )
          : null,
      child: ImageIcon(AssetImage(imagePath)),
    );
  }
}
