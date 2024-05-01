import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          title: const Text("Master Flutter"),
        ),
        drawer: const Drawer(
          backgroundColor: Colors.indigo,
        ),
        body: const Center(child: Text("Welcome to Master Flutter in 8hrs course")),
      ),
    );
  }
}