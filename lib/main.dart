import 'package:flutter/material.dart';
import 'package:masterflutter/pages/cart.dart';
import 'package:masterflutter/pages/home_details.dart';
import 'package:masterflutter/pages/login_page.dart';
import 'package:masterflutter/pages/home_page.dart';
import 'package:masterflutter/models/catalog.dart'; // Import catalog model
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
        textTheme: GoogleFonts.latoTextTheme().copyWith(
          bodyText1: TextStyle(color: Colors.black), // Adjust text color for light mode
          bodyText2: TextStyle(color: Colors.black), // Adjust text color for light mode
          headline6: TextStyle(
            color: Colors.black, // Set app bar title text color for light mode
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff403b58), // Background color in dark mode
          foregroundColor: Colors.white,
        ),
        scaffoldBackgroundColor: const Color(0xff403b88), // Background color in dark mode
        cardColor: Colors.black, // Card color in dark mode
        textTheme: GoogleFonts.latoTextTheme().copyWith(
          bodyText1: const TextStyle(color: Colors.white), // Adjust text color for dark mode
          bodyText2: const TextStyle(color: Colors.white), // Adjust text color for dark mode
          headline6: const TextStyle(
            color: Colors.white, // Set app bar title text color for dark mode
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      initialRoute: "/cart",
      routes: {
        "/": (context) => HomePage(),
        "/login": (context) => LoginPage(),
        "/cart": (context) => CartPage()
      },
    );
  }
}
