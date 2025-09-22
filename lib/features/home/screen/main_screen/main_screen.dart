import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce_mobile/features/cart/screen/cart_screen.dart';
import 'package:ecommerce_mobile/features/home/home_screen.dart';
import 'package:ecommerce_mobile/features/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> screens = [HomeScreen(name: ''), ProfileScreen(), CartScreen()];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        index: selectedIndex,
        backgroundColor: Colors.transparent,
        color: Colors.black,
        buttonBackgroundColor: Colors.orangeAccent,
        height: 60,
        animationDuration: const Duration(milliseconds: 300),
        animationCurve: Curves.easeInOut,
        items: [
          Icon(
            Icons.home,
            size: selectedIndex == 0 ? 30 : 24,
            color: selectedIndex == 0 ? Colors.white : Colors.grey[300],
          ),
          Icon(
            Icons.person,
            size: selectedIndex == 1 ? 30 : 24,
            color: selectedIndex == 1 ? Colors.white : Colors.grey[300],
          ),
          Icon(
            Icons.favorite,
            size: selectedIndex == 2 ? 30 : 24,
            color: selectedIndex == 2 ? Colors.white : Colors.grey[300],
          ),
        ],
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}

// original version
// import 'package:ecommerce_mobile/features/cart/screen/cart_screen.dart';
// import 'package:ecommerce_mobile/features/home/home_screen.dart';
// import 'package:ecommerce_mobile/features/profile/profile_screen.dart';
// import 'package:flutter/material.dart';

// class MainScreen extends StatefulWidget {
//   const MainScreen({super.key});

//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   List<Widget> screens = [HomeScreen(name: ''), ProfileScreen(), CartScreen()];
//   int selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: screens[selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: selectedIndex,
//         onTap: (index){
//           setState(() {
//             selectedIndex = index;
//           });
//         },
//         type: BottomNavigationBarType.fixed,
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite),
//             label: 'favorite',
//           ),
//         ],
//       ),
//     );
//   }
// }
