import 'package:dice_rolling_app/pages/splash_screen.dart';
import 'package:flutter/material.dart';

import 'pages/dice_roller_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
