//import 'package:flutter/material.dart';
//
//void main(){
//  runApp(DynamicList(
//    items:new List<String>.generate(1000, (i) => "Item $i")
//  ));
//}
//
//class DynamicList extends StatelessWidget{
//
//  final List<String> items;
//  DynamicList({Key key,@required this.items}):super(key:key);
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: ListView.builder(
//        itemCount: items.length,
//        itemBuilder:(context,index){
//          print(items[index]);
//          return  new ListTile(
//            title:new Text("${items[index]}"),
//          );
//        } )
//    );
//  }
//}