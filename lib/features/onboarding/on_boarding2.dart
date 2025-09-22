import 'package:ecommerce_mobile/features/home/home_screen.dart';
import 'package:ecommerce_mobile/features/home/screen/main_screen/main_screen.dart';
import 'package:ecommerce_mobile/features/onboarding/on_boarding.dart';
import 'package:flutter/material.dart';

class SecOnBoarding extends StatefulWidget {
  const SecOnBoarding({super.key});

  @override
  State<SecOnBoarding> createState() => _SecOnBoardingState();
}

class _SecOnBoardingState extends State<SecOnBoarding> {
  final _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            flex: 65,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffFFA451),
                image: DecorationImage(
                  image: AssetImage('assets/images/onboarding2.png'),
                  alignment: Alignment(0, 0.6),
                  scale: 1.2,
                ),
              ),
            ),
          ),

          Flexible(
            flex: 35,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              color: Color(0xffFFFFFF),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'What is your firstname?',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff27214D),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _nameController,
                    decoration: InputDecoration(hint: Text('')),
                  ),
                  const SizedBox(height: 34),
                  ElevatedButton(
                    onPressed: () {
                      String nameController = _nameController.text;
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => MainScreen()),
                        (route) => false,
                      );
                    },

                    child: Text('Let’s Continue'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
