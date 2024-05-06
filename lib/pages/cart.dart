import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/catalog.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.indigo : Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: isDarkMode ? Colors.white : Colors.indigo,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "Cart",
          style: TextStyle(
            color: isDarkMode ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: CartList(),
            ),
          ),
          CartTotal()
        ],
      ),
    );
  }
}

class CartTotal extends StatelessWidget {
  const CartTotal({Key? key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "\$${99999}",
            style: TextStyle(
              color: isDarkMode ? Colors.white : Colors.indigo,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                isDarkMode ? Colors.white : Colors.indigo,
              ),
            ),
            onPressed: () {},
            child: Text(
              "Buy",
              style: TextStyle(
                color: isDarkMode ? Colors.indigo : Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CartList extends StatefulWidget {
  const CartList({Key? key});

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return ListView.builder(
      itemCount: 5, // Replace this with the actual number of items in the cart
      itemBuilder: (context, index) => ListTile(
        leading: Icon(
          Icons.done_outline_rounded,
          color: Colors.green,
        ),
        title: Text(
            "Item $index",
        style: TextStyle(
          color: isDarkMode? Colors.white : Colors.black
        ),
        ), // Display actual item names
        trailing: IconButton(
          icon: Icon(
              Icons.remove_circle_outline,
          color: Colors.red,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
