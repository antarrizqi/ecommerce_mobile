// import 'package:flutter/material.dart';

// // ignore: unused_field
// class FoodItem extends StatelessWidget {
//   const FoodItem({super.key});

// final Fooditem item;

//   final string? name;

//   final list <string> category = 'hottest','popular','top','most liked','recently added'.'newest';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       child: Stack(
//         children: [
//           Column(
//             children: [
//               Image.asset('assets/image/food.png', width: 90, height: 90),
//               SizedBox(height: 16),
//               Text(
//                 'honey lime combo',
//                 style: TextStyle(fontWeight: FontWeight.w600),
//                 maxLines: 1,
//                 overflow: TextOverflow.ellipsis,
//               ),
//               SizedBox(height: 14),
//               Row(
//                 mainAxisSize: MainAxisSize.max,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text('2.000', style: TextStyle(color: Color(0xffFFF08626))),
//                   SizedBox(width: 36),
//                   Container(
//                     padding: EdgeInsets.all(6),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(100),
//                       color: Color(0xffF08626),
//                     ),
//                     child: Icon(Customicon.search),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           Positioned(
//             child: Icon(
//               Icons.favorite_border_rounded,
//               color: Color(0xffFFA451),
//               size: 16,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:ecommerce_mobile/features/home/screen/detail_screen/detail_salad.dart';
import 'package:flutter/material.dart';

Container cardMethod(
  String teks,
  String harga,
  String gambar,
  IconData myIcon,
  Widget pagetujuan,
  BuildContext context,
) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      boxShadow: [BoxShadow(color: Colors.black, blurRadius: 1)],
    ),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  children: [Image.asset(gambar, height: 90, width: 90)],
                ),
              ),
              SizedBox(height: 16),
              Text(
                teks,
                style: TextStyle(
                  color: Colors.green[400],
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(harga, style: TextStyle(color: Colors.amber)),
                  SizedBox(width: 36),
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.amber,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => pagetujuan),
                        );
                      },
                      child: Icon(myIcon, color: Colors.white, size: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget buildCategoryCard(String title, String imageUrl, BuildContext context) {
  return Container(
    width: 120,

    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 4,
          offset: const Offset(0, 2),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),

          child: Image.network(imageUrl, height: 80, fit: BoxFit.cover),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
      ],
    ),
  );
}
