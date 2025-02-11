import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: const HomePage(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(
          //brightness: Brightness.dark,
          //primarySwatch: Colors.red
          ),
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        "/login" : (context) => LoginPage()// either home or routes should be used not both
      },
    );
  }
}
