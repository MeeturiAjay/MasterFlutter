import 'package:flutter/material.dart';
import 'drawer.dart'; // Importing the drawer.dart file

class HomePage extends StatelessWidget {
  const HomePage({Key? key}); // Fixed super.key to Key? key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.indigo,
        title: const Text("Master Flutter"),
      ),
      drawer: Mydrawer(),
      body: const Center(
        child: Text("Welcome to Master Flutter in 8hrs course"),
      ),
    );
  }
}

