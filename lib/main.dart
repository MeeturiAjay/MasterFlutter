import 'package:flutter/material.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        "/login": (context) => LoginPage(),
        // Remove the route for "/details" from here
      },
    );
  }
}
