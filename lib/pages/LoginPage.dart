import 'package:flutter/material.dart';
import 'package:flutter_application/util/routes.dart';
class loginpage extends StatefulWidget {
  

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
    child: SingleChildScrollView( 
    child: Column(children: [
      Image.asset("assets/images/login_img.png",fit:BoxFit.cover ,),
      SizedBox(
        height: 20.0,
      ),
      Text("Welcome,",
      style: TextStyle(
        fontSize: 28
      ),),
      SizedBox(
        height: 20.0,
      ),
      
      Padding(
        padding: const EdgeInsets.symmetric(vertical :16.0 ,horizontal:500.0),
       
         child: Column(children: [ TextFormField(
        decoration:InputDecoration(
          hintText: " Enter username",
          labelText: "USername"
        
        ), ),
         TextFormField(
           obscureText: true,
        decoration:InputDecoration(
          hintText: " Enter Password",
          labelText: "password"
        
        ),
     ),
     SizedBox(
       height: 20.0,
     ),
    ElevatedButton(child:Text("Login here"),
    style: TextButton.styleFrom(minimumSize: Size(100, 100)),
    onPressed: (){
    Navigator.pushNamed(context, MyRoutes.homeRoute);
    }, 
    )
     ],),
      )
    ],
    ),
    )
    );
  }
}