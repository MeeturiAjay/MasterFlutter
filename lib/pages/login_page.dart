import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changebutton = false;

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
            Image.asset("assets/images/login_image.png", fit: BoxFit.fill),
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
            const SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: () async {
                setState(() {
                  changebutton = true;
                });
                await Future.delayed(
                  const Duration(seconds: 1),
                );
                Navigator.pushNamed(context, "/");
              },
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                height: 40,
                width: changebutton ? 40 : 120,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(changebutton ? 40 : 10),
                ),
                child: changebutton
                    ? const Icon(Icons.done, color: Colors.white)
                    : const Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
