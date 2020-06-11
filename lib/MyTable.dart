import 'package:flutter/material.dart';

//void main(){
//  runApp(MyTable());
//}

class MyTable extends StatelessWidget{

  static const List<String> allList =[
    "http://img31.mtime.cn/mt/2014/03/07/123549.37376649_96X128.jpg",
    "http://img31.mtime.cn/mt/2014/01/06/105446.89493583_96X128.jpg",
    "http://img31.mtime.cn/mt/2014/06/17/145457.44209161_96X128.jpg",
    "http://img31.mtime.cn/mt/2014/02/22/230204.38226096_96X128.jpg",
    "http://img31.mtime.cn/mt/2013/11/20/172527.42989246_96X128.jpg",
    "http://img31.mtime.cn/mt/2014/09/12/102734.13658001_96X128.jpg",
    "http://img31.mtime.cn/mt/2014/02/23/035905.95742424_96X128.jpg",
    "http://img31.mtime.cn/mt/2013/11/29/102947.25583478_96X128.jpg",
    "http://img5.mtime.cn/mt/2019/09/19/152056.28138548_96X128.jpg",
    "http://img31.mtime.cn/mt/2014/03/07/123549.37376649_96X128.jpg",
    "http://img31.mtime.cn/mt/2014/01/06/105446.89493583_96X128.jpg",
    "http://img31.mtime.cn/mt/2014/06/17/145457.44209161_96X128.jpg",
    "http://img31.mtime.cn/mt/2014/02/22/230204.38226096_96X128.jpg",
    "http://img31.mtime.cn/mt/2013/11/20/172527.42989246_96X128.jpg",
    "http://img31.mtime.cn/mt/2014/09/12/102734.13658001_96X128.jpg",
    "http://img31.mtime.cn/mt/2014/02/23/035905.95742424_96X128.jpg",
    "http://img31.mtime.cn/mt/2013/11/29/102947.25583478_96X128.jpg",
    "http://img5.mtime.cn/mt/2019/09/19/152056.28138548_96X128.jpg",
    "http://img31.mtime.cn/mt/2014/03/07/123549.37376649_96X128.jpg",
    "http://img31.mtime.cn/mt/2014/01/06/105446.89493583_96X128.jpg",
    "http://img31.mtime.cn/mt/2014/06/17/145457.44209161_96X128.jpg",
    "http://img31.mtime.cn/mt/2014/02/22/230204.38226096_96X128.jpg",
    "http://img31.mtime.cn/mt/2013/11/20/172527.42989246_96X128.jpg",
    "http://img31.mtime.cn/mt/2014/09/12/102734.13658001_96X128.jpg",
    "http://img31.mtime.cn/mt/2014/02/23/035905.95742424_96X128.jpg",
    "http://img31.mtime.cn/mt/2013/11/29/102947.25583478_96X128.jpg",
    "http://img5.mtime.cn/mt/2019/09/19/152056.28138548_96X128.jpg",
  ];

  List<Widget> _smallTable(){
    List<Widget> allWidget =[];
    Widget content;
    for(var item in allList){
      allWidget.add(Column(
        children: <Widget>[
          Image.network(item,fit:BoxFit.cover),
          Text("测试数据")
        ],
      ));
    }
    return allWidget;
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //每行的图片数量
            crossAxisCount: 3,
            //行与行的距离
            mainAxisSpacing: 2.0,
            //列与列的距离
            crossAxisSpacing: 2.0,
            //图片比例
            childAspectRatio: 0.7
          ),
          children:_smallTable()
        ),
      ),
    );
  }
}

//class TextAndImg extends StatefulWidget{
//  State<StatefulWidget> createState(){
//    return TextAndImgStat();
//  }
//}
//
//class TextAndImgStat extends State<TextAndImg>{
//  @override
//  Widget build(BuildContext context) {
//  }
//}