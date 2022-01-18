import 'package:flutter/material.dart';
class  homepage extends StatelessWidget {
 final String name= "rutuja";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title:Text("MyApp"),
       ),
        
        body:Center(
          child:Container(
             child:Text("welcome $name") ,
          ),
        ),
      
       drawer: Drawer(),
      
    );
  }
}