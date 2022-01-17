import 'package:flutter/material.dart';
import 'package:flutter_application/pages/homepage.dart';
import 'package:flutter_application/pages/loginpage.dart';
import 'package:flutter_application/util/routes.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      routes:{
        "/":(Context)=>loginpage(),
        MyRoutes.homeRoute:(context)=>homepage(),
        MyRoutes.loginRoute:(context)=>loginpage()


      },
    );
  }
}