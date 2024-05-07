import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:masterflutter/models/cart_model.dart';

class CartPage extends StatelessWidget {
  //final CartModel cart;

  const CartPage({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: CartList(),
            ),
            CartTotal(),
          ],
        ),
      ),
    );
  }
}


class CartTotal extends StatelessWidget {
  //final CartModel cart;

  const CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _cart = CartModel();
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "\$${_cart.totalPrice}",
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
            onPressed: () {
              // Implement buy functionality here
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    "Buying not supported yet..",
                    style: TextStyle(
                      color: isDarkMode ? Colors.black : Colors.white,
                    ),
                  ),
                ),
              );
            },
            child: Text(
              "Buy",
              style: TextStyle(
                color: isDarkMode ? Colors.indigo : Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CartList extends StatefulWidget {
  //final CartModel cart;

  const CartList({Key? key}) : super(key: key);

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  final _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return ListView.builder(
      shrinkWrap: true,
      itemCount: _cart.items?.length,
      itemBuilder: (context, index) => ListTile(
          leading: Icon(
            Icons.done_outline_rounded,
            color: Colors.green,
          ),
          title: Text(
            _cart.items[index].name,
            style: TextStyle(
              color: isDarkMode ? Colors.white : Colors.black,
            ),
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.remove_circle_outline,
              color: Colors.red,
            ),
            onPressed: () {},
          )),
    );
  }
}
