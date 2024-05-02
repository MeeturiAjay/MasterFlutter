import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changebutton = false;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
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
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Username cannot be empty.";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: "Password",
                        hintText: "Enter Password",
                        hintStyle: TextStyle(fontSize: 15.0),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter the password.";
                        } else if (value.length < 8) {
                          return "Password length must be at least 8.";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: () async {
                  if (_formKey.currentState != null &&
                      _formKey.currentState!.validate()) {
                    setState(() {
                      changebutton = true;
                    });
                    await Future.delayed(
                      const Duration(seconds: 1),
                    );
                    await Navigator.pushNamed(context, "/");
                    setState(
                      () {
                        changebutton = false;
                      },
                    );
                  }
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
      ),
    );
  }
}
