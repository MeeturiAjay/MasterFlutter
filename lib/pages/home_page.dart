import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.indigo,
        //foregroundColor: Colors.white,
        title: const Text("Master Flutter"),
      ),
      drawer: const Drawer(
        backgroundColor: Colors.indigo,
      ),
      body: const Center(
        child: Text("Welcome to Master Flutter in 8hrs course"),
      ),
    );
  }
}