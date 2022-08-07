import 'dart:async';

import 'package:archive/screens/welcome_screen.dart';
import 'package:archive/ui/component/logo/logo_hospital.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startSplashScreen() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) {
            return const WelcomeScreen();
          }));
    });
  }
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startSplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFA5D6A7),
        child: const Center(
          child: LogoHospital(),
        ),
      ),
    
    );
  }
}