import 'package:deercoffee/carousel_slider.dart';
import 'package:deercoffee/home_page.dart';
import 'package:deercoffee/notification.dart';
import 'package:deercoffee/other_page.dart';
import 'package:deercoffee/update_profile.dart';
import 'package:deercoffee/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deer Coffee',
      theme: ThemeData(
       primarySwatch: Colors.orange,
      ),
      // home: SplashScreen(),
      // home: HomePage(),
      // home : CarouselSliderWidget(),
      // home: UpdateProfilePage(),
          // home: NotificationPage(),

          home: OtherPage(),
    );
  }
}

