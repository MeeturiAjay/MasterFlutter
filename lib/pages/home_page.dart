import 'package:flutter/material.dart';
import 'package:masterflutter/models/catalog.dart';
import 'Item_widget.dart';
import 'drawer.dart'; // Importing the drawer.dart file

class HomePage extends StatelessWidget {
  const HomePage({Key? key}); // Fixed super.key to Key? key

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
