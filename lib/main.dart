import 'package:flutter/material.dart';
import 'package:snap_map/constant/dimens.dart';
import 'package:snap_map/home_screen.dart';
import 'package:snap_map/login.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
        fontFamily: 'Vazir',
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                  fixedSize:
                      const MaterialStatePropertyAll(Size(double.infinity, 60)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Dimens.medium))),
                  elevation: const MaterialStatePropertyAll(0),
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    return const Color.fromARGB(255, 2, 207, 36);
                  }))),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide:
            const BorderSide(color: Color(0xFFF1F1FB), width: 2.0)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide:
            const BorderSide(color: Color(0xFFF1F1FB), width: 2.0)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide:
            const BorderSide(color: Color(0xFF0ce369), width: 2.0)),
        contentPadding: const EdgeInsets.all(25.0),
      )
      ),
    );
  }
}
