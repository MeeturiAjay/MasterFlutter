import 'package:flutter/material.dart';
import 'package:masterflutter/models/cart_model.dart';
import 'package:masterflutter/pages/home_page.dart';
import 'package:masterflutter/pages/cart.dart' as cart_page;
import 'package:google_fonts/google_fonts.dart';
import 'package:masterflutter/pages/login_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = CartModel();

    return MaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
        textTheme: GoogleFonts.latoTextTheme().copyWith(
          bodyLarge: const TextStyle(color: Colors.black),
          bodyMedium: const TextStyle(color: Colors.black),
          titleLarge: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff403b58),
          foregroundColor: Colors.white,
        ),
        scaffoldBackgroundColor: const Color(0xff403b88),
        cardColor: Colors.black,
        textTheme: GoogleFonts.latoTextTheme().copyWith(
          bodyLarge: const TextStyle(color: Colors.white),
          bodyMedium: const TextStyle(color: Colors.white),
          titleLarge: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(cart: cart),
        "/login": (context) => LoginPage(),
        "/cart": (context) => cart_page.CartPage(),
      },
    );
  }
}
