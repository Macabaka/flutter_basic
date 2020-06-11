import 'package:flutter/material.dart';

//void main()=>runApp(ImgApp());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Text("横向滚动条",
                    style:
                    TextStyle(fontWeight: FontWeight.w500, fontSize: 24)),
                Container(
                  height: 150.0,
                  child: MyList(),
                ),
                Text(
                  "Epanded横向灵活布局",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                ),
                MyButton(),
                Text(
                  "Epanded纵向灵活布局",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                ),
                MyText(),
                Text(
                  "stack布局练习",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                ),
                MyStack(),
                Text(
                  "position布局练习",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                ),
                MyPosition(),
                Text(
                  "卡片组件练习",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                ),
                MyCard(),
              ],
            ),
          ),
        ));
  }
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          width: 360.0,
          color: Colors.deepOrange,
        ),
        Container(
          width: 360.0,
          color: Colors.yellow,
        ),
        Container(
          width: 360.0,
          color: Colors.pink,
        ),
        Container(
          width: 360.0,
          color: Colors.green,
        ),
      ],
    );
  }
}

//expand属性实现灵活布局
class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        RaisedButton(
          onPressed: () {},
          child: Text("pink"),
          color: Colors.pink,
        ),
        Expanded(
          child: RaisedButton(
            onPressed: () {},
            child: Text("yellow"),
            color: Colors.yellow,
          ),
        ),
        RaisedButton(
          onPressed: () {},
          child: Text("red"),
          color: Colors.red,
        )
      ],
    );
  }
}

//expand实现纵向灵活布局
class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
//        crossAxisAlignment: CrossAxisAlignment.center,
//        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("I am  Johnny"),
          Expanded(
            child: Text("I love coding"),
          ),
          Text("My webSite is Johnnycc.com")
        ],
      ),
      color: Colors.red,
      height: 100.0,
    );
  }
}

//stack布局学习
class MyStack extends StatelessWidget {
  var stack = new Stack(
    alignment: const FractionalOffset(0.5, 0.5),
    children: <Widget>[
      CircleAvatar(
        backgroundImage: NetworkImage(
            'https://johnnycc.oss-cn-beijing.aliyuncs.com/UTOOLS1589115941822.jpg'),
        radius: 80.0,
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.lightBlue,
        ),
        padding: EdgeInsets.all(5.0),
        child: Text("测试数据"),
      ),
      Positioned(
        right: 10.0,
        top: 20.0,
        child: Text(
          "position测试语句",
          style: TextStyle(color: Colors.white),
        ),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: stack,
    );
  }
}

class MyPosition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 80.0,
          width: 300.0,
          color: Colors.lightBlue,),
        Positioned(
          left: 80.0,
          bottom: 50.0,
          child: Text("position测试语句"),
        ),
      ],
    );
  }
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      child: Card(
        child: Column(
          children: <Widget>[
            ListTile(
                title: Text(
                  "测试数据",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  "测试数据",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                leading: Icon(Icons.account_circle, color: Colors.lightBlue,)),
            Divider(
              color: Colors.black,
            ),
            ListTile(
                title: Text(
                  "测试数据",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  "测试数据",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                leading: Icon(Icons.account_circle, color: Colors.lightBlue,)),
            Divider(
              color: Colors.black,
            ),
            ListTile(
                title: Text(
                  "测试数据",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  "测试数据",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                leading: Icon(Icons.account_circle, color: Colors.lightBlue,)),

          ],
        ),

      ),
    );
  }
}
