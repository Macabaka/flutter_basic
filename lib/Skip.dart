import 'package:flutter/material.dart';
import 'Login.dart';
void main(){
  runApp(Skip());
}

class Skip extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Skip"),
      ),
        body: ListView(
          children: <Widget>[
            RaisedButton(
              child: Text("跳转"),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Login())
                );
              },
            )
          ],
        ),
      );
  }
}
