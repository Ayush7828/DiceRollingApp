import 'package:dice_rolling_app/pages/dice_roller_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigator();
  }

  _navigator() async {
    await Future.delayed(Duration(seconds: 2), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => DiceRollerPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/splashscreen.gif"),
          SizedBox(
            height: 20,
          ),
          CircularProgressIndicator(
            color: Color.fromARGB(255, 224, 99, 99),
          )
        ],
      ),
    );
  }
}
