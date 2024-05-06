import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/catalog.dart';

class HomeDetailsPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailsPage({Key? key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(32.0),
        child: ButtonBar(

          alignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$${catalog.price}",
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.indigo),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.indigo),
                  shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)))),
              onPressed: () {},
              child: const Text(
                "Buy",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white60,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Padding(
                padding: const EdgeInsets.all(32.0), // Adjust padding as needed
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.network(
                    catalog.image,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                //color: Colors.white,
                width: double.maxFinite,
                child: Column(
                  children: [
                    Text(
                      catalog.name.toString(),
                      style: TextStyle(
                          fontSize: 20,
                      fontWeight: FontWeight.bold),
                    ),
                    Text(
                      catalog.desc.toString(),
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
