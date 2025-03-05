import 'package:flutter/material.dart';
import 'package:gov_uz/src/presentation/extra_info_page/extra_info_page.dart';
import 'package:gov_uz/src/presentation/holidays_page/holidays_page.dart';
import 'package:gov_uz/src/presentation/home_page/home_page.dart';
import 'constats/appcolors.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  List<Widget> pages = [
     HomePage(),
     ExtraInfoPage(),
    HolidaysPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.blue,
        currentIndex: _currentIndex,
        selectedLabelStyle:  TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        onTap: (int newIndex) {
          setState(() {
            if (newIndex == 1) {
              pages[1] =  ExtraInfoPage();
            }
            _currentIndex = newIndex;
          });
        },
        items: [
          bottomNavigationBarWidget(
            "assets/images/home.png",
            "Uzb haqida",
          ),
          bottomNavigationBarWidget(
            "assets/images/img_1.png",
                "Malumotlar",
          ),
          bottomNavigationBarWidget(
            "assets/images/img_2.png",
                "Bayramlar",
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem bottomNavigationBarWidget(String imageURL, String label) {
    return BottomNavigationBarItem(
      label: label,
      icon: ImageIcon(
        AssetImage(imageURL),
        size: 35,
      ),
    );
  }
}