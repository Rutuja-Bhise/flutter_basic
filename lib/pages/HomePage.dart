import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String name = "Rutuja";

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyApp"),
      ),
      body: Center(
        // there is was use of container here. removed it and directly assign
        // text widget as a child of Center
        // Container has many uses- padding, margin, color, BoxDecoration
        // and many more
        // if you want to see the uses or parameters of a widget then just take
        // the cursor and hover over that widget's name you will see all the
        // parameters of that widget
        child: Text("welcome $name"),
      ),
      drawer: const Drawer(),
    );
  }
}
