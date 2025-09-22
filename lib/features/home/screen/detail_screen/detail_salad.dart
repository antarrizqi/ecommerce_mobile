import 'package:ecommerce_mobile/features/cart/screen/cart_screen.dart';
import 'package:ecommerce_mobile/features/home/home_screen.dart';
import 'package:flutter/material.dart';

class MyDetail extends StatefulWidget {
  const MyDetail({super.key});

  @override
  State<MyDetail> createState() => _MyDetailState();
}

class _MyDetailState extends State<MyDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: BackButton()),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Color(0xffFFFDD9),
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Image.asset(
                'assets/images/food1.png',
                height: 296,
                width: 300,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Japanese Diet Bento',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '10.000',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text(
                          'A wholesome and balanced Japanese-style bento crafted for health-conscious diners. This box features perfectly portioned servings of steamed rice, fresh seasonal vegetables, lean protein such as grilled salmon or tofu, and light pickled sides. Prepared with minimal oil and rich in natural flavor, it offers a satisfying, low-calorie meal that supports your fitness and wellness goals without compromising on authentic taste.',
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisSize: MainAxisSize.max,

                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CartScreen(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                  vertical: 12,
                                  horizontal: 30,
                                ),
                              ),
                              child: Text('Buy now'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
