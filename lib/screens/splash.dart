import 'package:flutter/material.dart';
import 'package:meals/screens/tabs_screen.dart';
import 'package:meals/utils/app_routes.dart';
import 'dart:async';

import '../core/app_image.dart';
import '../models/meal.dart';
import 'tabs_screen.dart';

class SplashWidget extends StatefulWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  State<SplashWidget> createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  @override
  // void initState() {
  //   super.initState();

  //   Timer(
  //       const Duration(seconds: 2),
  //       () => Navigator.pushReplacement(
  //             context,
  //             MaterialPageRoute(
  //               builder: (context) => TabsScreen(),
  //             ),
  //           ));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            //   'loading...',
            //   style: TextStyle(
            //       fontSize: 25,
            //       fontWeight: FontWeight.bold,
            //       color: Color.fromARGB(255, 245, 54, 165)),
            // ),
            SizedBox(
                height: 200,
                child: Image.asset(AppImages.waiting, fit: BoxFit.contain)),
            // CircularProgressIndicator(
            //     valueColor: AlwaysStoppedAnimation(
            //       Color.fromARGB(255, 243, 140, 174),
            //     ),
            //     strokeWidth: 3.0)
          ],
        ),
      ),
    );
  }
}
