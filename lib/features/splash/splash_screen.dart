import 'package:ecommerce_mobile/features/onboarding/on_boarding.dart';
import 'package:ecommerce_mobile/preference/main_clolor.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => FirstOnBoarding()),
        (Route) => false,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor.primaryColor,
      body: Center(child: Image.asset('assets/images/healthyme.png')),
    );
  }
}
