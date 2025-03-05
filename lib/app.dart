import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gov_uz/bottom_nav_bar.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: BottomNavBar(),
    );
  }
}
