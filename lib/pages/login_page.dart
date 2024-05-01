import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 80.0,
            ),
            Image.asset("assets/images/login_image.png",
                fit: BoxFit.fill),
            const Text(
              "Log in/Sign in",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Username",
                      hintText: "Enter Username",
                      hintStyle: TextStyle(fontSize: 15.0),
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: "Password",
                      hintText: "Enter Password",
                      hintStyle: TextStyle(fontSize: 15.0),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo, // Background color
                foregroundColor: Colors.white,
                minimumSize: const Size(140, 40)// Foreground color
              ),
              child: const Text("Login",
              style: TextStyle(
                fontSize: 18.0
              )),
            ),
          ],
        ),
      ),
    );
  }
}
