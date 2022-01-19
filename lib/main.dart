import 'package:flutter/material.dart';
import 'package:flutter_application/pages/HomePage.dart';
import 'package:flutter_application/pages/LoginPage.dart';
import 'package:flutter_application/util/routes.dart';
import 'package:flutter_application/widget/Themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,

      theme: MyTheme.lightTheme(context),

      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage()
      },
    );
  }
}
