import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:salmo/main.dart';
import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => MyHomePage(
                  title: 'GFG',
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 1.0, // between 0 and 1
          heightFactor: 1.0,
          child: Container(
            color: Color.fromARGB(255, 36, 67, 222),
            child: Image(
              image: AssetImage('images/logo_salmo.png'),
            ),
          ),
        ),
      ),
    );
  }
}
