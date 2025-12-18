import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_new_project_1/models/flutter.dart';
import 'package:flutter_new_project_1/widgets/Item_widget.dart';
import 'package:flutter_new_project_1/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});



  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final days = 30;
  var whatsappName=["Kathank","Tejas","Ketav","Krishna","Heet"];
  var images=<Image>[
    Image.asset("lib/images/img_1.png"),
    Image.asset("lib/images/img_1.png"),
    Image.asset("lib/images/img_1.png"),
    Image.asset("lib/images/img_1.png"),
    Image.asset("lib/images/img_1.png"),
  ];
  // final String name = " flutter";
  // @override
  // void initState() {
  //   super.initState();
  //   loadData();
  // }
  //
  // loadData() async {
  //   await Future.delayed(Duration(seconds: 2));
  //   var CatalogJson = await rootBundle.loadString(
  //     "assets/files/CatalogModel.json",
  //   );
  //   var decodedData = jsonDecode(CatalogJson);
  //   var ProductsData = decodedData["Products"];
  //   CatalogModel.items =
  //       List.from(
  //         ProductsData,
  //       ).map<Item>((items) => Item.fromMap(items)).toList();
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter TestApp")),
      body: ListView.separated(
        itemBuilder: (context, index){
      return ListTile(
        title: Text(whatsappName[index]),
        leading: CircleAvatar(backgroundImage: images[index].image),
      );
    }
 
        //   padding: const EdgeInsets.all(16.0),
        //   child:
        //       (CatalogModel.items != null && CatalogModel.items!.isNotEmpty)
        //           ? ListView.builder(
        //             itemCount: CatalogModel.items?.length,
        //             itemBuilder: (context, index) {
        //               return ItemWidget(item: CatalogModel.items![index]);
        //             },
        //           )
        //           : Center(child: CircularProgressIndicator()),
        // ),
        // drawer: MyDrawer(),

      );
  }
}
