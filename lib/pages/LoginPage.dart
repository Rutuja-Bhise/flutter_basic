import 'package:flutter/material.dart';
import 'package:flutter_application/util/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_img.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "Welcome,",
              style: TextStyle(fontSize: 28),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              // you gave 500 padding which is a lot for an android device
              // but according to web it's good
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 50.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: " Enter username", labelText: "Username"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: " Enter Password", labelText: "Password"),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    child: const Text("Login here"),
                    style:
                        TextButton.styleFrom(minimumSize: const Size(100, 100)),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
