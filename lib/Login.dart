import 'package:flutter/material.dart';
import 'main.dart';
void main(){
  runApp(Login());
}

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "登录",
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            Text("登录界面"),
            RaisedButton(
              child: Text("返回主界面"),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Main())
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
