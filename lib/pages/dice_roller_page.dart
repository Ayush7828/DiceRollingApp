import 'package:flutter/material.dart';
import 'dart:math';

class DiceRollerPage extends StatefulWidget {
  const DiceRollerPage({Key? key}) : super(key: key);

  @override
  State<DiceRollerPage> createState() => _DiceRollerPageState();
}

class _DiceRollerPageState extends State<DiceRollerPage> {
  int leftdice = 1;
  int righdice = 1;
  void rolldice() {
    setState(() {
      leftdice = Random().nextInt(6) * 1;
      righdice = Random().nextInt(6) * 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomLeft,
                  colors: [Color(0xff33ccff), Color(0xffff99cc)])),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Image.asset("assets/images/dice$leftdice.png")),
                    const SizedBox(
                      width: 6,
                    ),
                    Expanded(
                        child: Image.asset("assets/images/dice$righdice.png")),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: rolldice,
                  child: Container(
                    margin: const EdgeInsets.all(40),
                    padding: const EdgeInsets.all(15),
                    width: double.infinity,
                    // height: 52,
                    // width: 324,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.topRight,
                        colors: [
                          Color(0xffff99cc), //0xff33ccff
                          Color(0xff33ccff),
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(0, 132, 199, 147),
                            offset: Offset(2, 4),
                            blurRadius: 15.0,
                            spreadRadius: 2.0)
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "P r e s s",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
