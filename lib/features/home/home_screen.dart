import 'package:ecommerce_mobile/features/home/screen/detail_screen/detail_salad.dart';
import 'package:ecommerce_mobile/features/onboarding/on_boarding.dart';
import 'package:ecommerce_mobile/features/onboarding/on_boarding2.dart';
import 'package:ecommerce_mobile/preference/Customicon_icons.dart';
import 'item_combo.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 26),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Customicon.search, size: 24),
                Column(
                  children: [
                    Icon(Customicon.basket, size: 24, color: Color(0xffFFA451)),
                    SizedBox(height: 4),
                    Text(
                      'my basket',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 35),
            Text(
              ' $name Lets start the day with a healthy, nutritious meal.',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 35),
            Row(
              children: [
                Flexible(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'searh for a food',
                      prefixIcon: Icon(Customicon.search, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(width: 35),
              ],
            ),
            SizedBox(height: 35),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Our Categories',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),

                SizedBox(
                  height: 150,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        buildCategoryCard(
                          'Weight loss',
                          'https://gorrywell.s3.ap-southeast-1.amazonaws.com/prod/gorrygourmet/menu/WeightFatLoss.jpeg',
                          context,
                        ),
                        const SizedBox(width: 12),
                        buildCategoryCard(
                          'Keto diet',
                          'https://gorrywell.s3.ap-southeast-1.amazonaws.com/prod/gorrygourmet/menu/NewAgeKetoDiet.jpeg',
                          context,
                        ),
                        const SizedBox(width: 12),
                        buildCategoryCard(
                          'Pregnancy',
                          'https://gorrywell.s3.ap-southeast-1.amazonaws.com/prod/gorrygourmet/menu/Pregnancy.jpeg',
                          context,
                        ),
                        const SizedBox(width: 12),
                        buildCategoryCard(
                          'Muscle',
                          'https://gorrywell.s3.ap-southeast-1.amazonaws.com/prod/gorrygourmet/menu/HipertensiStroke.jpg',
                          context,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            // Row(children: [newCategories('reog', 'assets/images/food.png')]),
            SizedBox(height: 35),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recomended combo',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xff202020).withOpacity(0.05),
                                spreadRadius: 0,
                                blurRadius: 6,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        cardMethod(
                          'Olive salad',
                          'Rp 30.000',
                          'assets/images/food.png',
                          Icons.arrow_circle_right,
                          MyDetail(),
                          context,
                        ),
                        SizedBox(width: 10),
                        cardMethod(
                          'Japanese bento',
                          'Rp 20.000',
                          'assets/images/food1.png',
                          Icons.arrow_circle_right,
                          SecOnBoarding(),
                          context,
                        ),
                        SizedBox(width: 10),
                        cardMethod(
                          'Combo salad',
                          'Rp 40.000',
                          'assets/images/food2.png',
                          Icons.arrow_circle_right,
                          FirstOnBoarding(),
                          context,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Padding newCategories(String text, String image) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
  //     child: Stack(
  //       children: [
  //         Container(
  //           height: 80,
  //           width: 100,
  //           decoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(16),
  //             image: DecorationImage(
  //               image: AssetImage(image),
  //               fit: BoxFit.cover,
  //               colorFilter: ColorFilter.mode(
  //                 Colors.black.withOpacity(0.4),
  //                 BlendMode.darken,
  //               ),
  //             ),
  //           ),
  //           child: Column(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             children: [
  //               Text(
  //                 text,
  //                 style: TextStyle(
  //                   color: Colors.white,
  //                   fontSize: 17,
  //                   fontWeight: FontWeight.bold,
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //         GestureDetector(
  //           onTap: () {
  //             MaterialPageRoute(builder: (context) => MyDetail());
  //           },
  //         ),
  //       ],
  //     ),
  //   );
  // }
}



// kodingan lama
                        // child: Stack(
                          //   children: [
                          //     Column(
                          //       children: [
                          //         Image.asset(
                          //           'assets/images/food.png',
                          //           width: 90,
                          //           height: 90,
                          //         ),
                          //         SizedBox(height: 16),
                          //         Text(
                          //           'honey lime combo',
                          //           style: TextStyle(fontWeight: FontWeight.w600),
                          //           maxLines: 1,
                          //           overflow: TextOverflow.ellipsis,
                          //         ),
                          //         SizedBox(height: 14),
                          //         Row(
                          //           mainAxisSize: MainAxisSize.max,
                          //           mainAxisAlignment:
                          //               MainAxisAlignment.spaceBetween,
                          //           children: [
                          //             Text(
                          //               '2.000',
                          //               style: TextStyle(
                          //                 color: Color(0xffFFF08626),
                          //               ),
                          //             ),
                          //             SizedBox(width: 36),
                          //             Container(
                          //               padding: EdgeInsets.all(6),
                          //               decoration: BoxDecoration(
                          //                 borderRadius: BorderRadius.circular(100),
                          //                 color: Color(0xffF08626),
                          //               ),
                          //               child: Icon(Customicon.search),
                          //             ),
                          //           ],
                          //         ),
                          //       ],
                          //     ),
                          //     Positioned(
                          //       right: 0,
                          //       left: 0,

                          //       child: GestureDetector(
                          //         onTap: () {},
                          //         child: Icon(
                          //           Icons.favorite_border_rounded,
                          //           color: Color(0xffFFA451),
                          //           size: 16,
                          //         ),
                          //       ),
                          //     ),
                          //   ],
                          // ),
