import 'package:ecommerce_mobile/features/home/screen/main_screen/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.light(),
        fontFamily: 'Josefin Sans',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xffFFA451),

            // di tambahin padding
            padding: EdgeInsets.symmetric(vertical: 14),

            // di tambahin padding
            foregroundColor: Color(0xffFFFFFF),
            textStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(10),
            ),
          ),
        ),

        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            textStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            side: BorderSide(color: Color(0xffFFA451)),
            padding: EdgeInsets.symmetric(vertical: 14),
            foregroundColor: Color(0xffFFA451),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),

        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Color(0xffF3F1F1),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xffFFA451),
          centerTitle: true,
          toolbarHeight: 70,
          surfaceTintColor: Color(0xffFFA451),
          leadingWidth: 100,
        ),
        
      ),

      

      home: const MainScreen(),
    );
  }
}
