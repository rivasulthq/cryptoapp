
import 'dart:async';

import 'package:cryptoapp/screens/homepage.dart';
import 'package:cryptoapp/styles/color.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget{

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    //Timer
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => HomePage()
                   
            ),
        ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [primaryColor,secondaryColor,]
          ),
        ),
         child: Image.asset('assets/images/ocuk.png',),
      ),
    );
  }
}