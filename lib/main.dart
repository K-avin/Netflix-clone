import 'package:flutter/material.dart';
// import 'package:movie_app/pages/profile_page.dart';
// import 'package:movie_app/pages/root_app.dart';

import 'package:movie_app/pages/splash_screen.dart';

// SplashScreen
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    // theme: ThemeData.light(),
    home: SplashScreen(),
  ));
}
