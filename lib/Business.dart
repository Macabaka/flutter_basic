import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
//void main() => runApp(new MyApp());

//container
//自定义组件
class Business extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return  Scaffold(
      appBar: AppBar(
        title: const Text("business"),
      ),
        body: new Center(
          child: Container(
            child: Text(
              wordPair.asPascalCase,style: TextStyle(fontSize: 25.0),),
            alignment: Alignment.center,
            color:Colors.red,
            width: 150,
            height: 150,
            padding: const EdgeInsets.fromLTRB(0,0,0,0),
          ),

        ),
      );
  }

}

