import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:masterflutter/models/catalog.dart';
import 'Item_widget.dart';
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

  loadData() async{
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
  }

  // Fixed super.key to Key? key
  @override
  Widget build(BuildContext context) {
    final DummyList = List.generate(20, (index) => CatalogModels.items[0]);
    return Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.indigo,
          title: const Text("Master Flutter"),
        ),
        drawer: Mydrawer(),
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: ListView.builder(
            itemCount: DummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: DummyList[index],
              );
            },
          ),
        ));
  }
}
