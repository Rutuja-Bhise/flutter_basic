import 'package:flutter/material.dart';
import 'package:flutter_application/models/Catalog.dart';
import 'package:flutter_application/widgets/drawer.dart';
import 'package:flutter_application/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Codepur";

  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    final dummyList=List.generate(50, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Padding(
        padding:const EdgeInsets.all(16.0),

        child: ListView.builder(
          itemCount:dummyList.length ,
          itemBuilder: (context, index){
            return ItemWidget(item: dummyList[index],);
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
