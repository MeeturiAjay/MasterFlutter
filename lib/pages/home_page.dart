import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:masterflutter/models/catalog.dart';
import 'item_widget.dart'; // Changed to lowercase
import 'drawer.dart'; // Importing the drawer.dart file
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModels.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  // Fixed super.key to Key? key
  @override
  Widget build(BuildContext context) {
    // final DummyList = List.generate(20, (index) => CatalogModels.items[0]);
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.indigo,
        title: const Text("Master Flutter"),
      ),
      drawer: Mydrawer(), // Changed to MyDrawer
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModels.items != null && CatalogModels.items.isNotEmpty)
            ? GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16),
                itemBuilder: (BuildContext context, int index) {
                  // Added parameter names
                  final item = CatalogModels.items[index];
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: GridTile(
                      header: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(color: Colors.indigo),
                        child: Text(
                          item.name,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      footer: Container(
                        padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            color: Colors.indigo
                          ),
                          child: Text(
                            style: const TextStyle(
                              color: Colors.white
                            ),
                              "\$${item.price.toString()}")),
                      // Changed to Text widget
                      child: Image.network(item.image),
                    ),
                  );
                },
                itemCount: CatalogModels.items.length,
              )
            : const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
