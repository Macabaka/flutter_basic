import 'package:flutter/material.dart';

void main(){
  runApp(PassValue());
}


class PassValue extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("有状态组件传值"),
      ),
      body:Center(
          child: Parent(),
      )
    );
  }
}

class Parent extends StatefulWidget{
    State<StatefulWidget> createState(){
      return ParentState();
    }
}

class ParentState extends State<Parent>{
  String data = "传递的数据";
  //回调函数
  void onChanged(val){
    setState(() {
      data  = val;
    });
  }

  @override
  Widget build(BuildContext context) {
      return Column(
        children: <Widget>[
          Center(
            //向子组件传值
          child: Child(data:data,callBack:(value)=>onChanged(value)),
        ),
        ],
      );
  }
}

class Child extends StatefulWidget{
  //提前定义参数，准备接收父组件
  String data;
  final callBack;
  //接收父组件参数
  Child({Key key,this.data,this.callBack}):super(key : key);
  State<StatefulWidget> createState(){
    return ChildState();
  }
}

class ChildState extends State<Child>{
  String data;
  //接收父组件参数
  @override
  void initState() {
    data  = widget.data;
    print(data);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child:(
        Text(data)
      )
    );
  }
}