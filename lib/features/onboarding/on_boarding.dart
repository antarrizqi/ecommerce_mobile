import 'package:ecommerce_mobile/features/onboarding/on_boarding2.dart';
import 'package:ecommerce_mobile/preference/main_clolor.dart';
import 'package:flutter/material.dart';

class FirstOnBoarding extends StatelessWidget {
  const FirstOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 65,
            child: Container(
              decoration: BoxDecoration(
                color: MainColor.primaryColor,
                image: DecorationImage(
                  image: AssetImage('assets/images/food1.png'),
                  alignment: Alignment(0, 0.6),
                  scale: 1,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 40,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: [
                  Text(
                    'Get The Best Healthy Food For Your Program',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'We deliver the best and freshest Health food in town. Order for a combo today!!!',
                  ),
                  SizedBox(height: 34),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecOnBoarding(),
                        ),
                      );
                    },

                    child: Text('lets continue'),
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
