import 'package:flutter/material.dart';
import 'Home.dart';
import 'Business.dart';
import 'School.dart';
import 'Skip.dart';
import 'Login.dart';
import 'PassValue.dart';
import 'person.dart';
import 'DynamicList.dart';
import 'MyTable.dart';
void main()=>runApp(Main());

class Main extends StatelessWidget{
  static const  String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
      //去掉debug标志
      debugShowCheckedModeBanner: false,
//      主题设置
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.pink
      ),
    );
  }
}
class MyStatefulWidget extends StatefulWidget{
  MyStatefulWidget({Key key}) :super(key:key);

  @override
  _MyStatefulWidgetState createState()=>_MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget>{
  //底部导航栏索引
  int _selectedIndex = 0;
  //文本样式
  static const TextStyle optionStyle = TextStyle(fontSize: 10,fontWeight: FontWeight.bold);
  //文本组件集合
  static final List<Widget> _widgetOptions = <Widget>[
    Home(),
    Business(),
    School(),
    Skip(),
    Login(),
    PassValue(),
    Person(),
    MyTable(),
//    DynamicList(),
  ];

  //底部导航栏点击触发方法
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
//          child:
//            Container(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.business),
              title: Text("business")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.school),
              title: Text("school")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.school),
              title: Text("跳转")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_activity),
              title: Text("登录")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_activity),
              title: Text("有状态组件传值")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.verified_user),
              title: Text("个人中心")
          ),
//          BottomNavigationBarItem(
//              icon: Icon(Icons.verified_user),
//              title: Text("无状态组件传值")
//          )
          BottomNavigationBarItem(
              icon: Icon(Icons.verified_user),
              title: Text("表格布局")
          ),
        ],

        //确定索引值
        currentIndex: _selectedIndex,
        //点击高亮颜色
        selectedItemColor: Colors.pink,
        //点击触发方法
        onTap: _onItemTapped,
        //防止底部导航栏超过三个变白色
        type: BottomNavigationBarType.fixed,
      ),
      //浮动按钮
      floatingActionButton:FloatingActionButton(onPressed: (){
        print("我被点击了");
      },
        child: Icon(Icons.add),
        backgroundColor: Colors.pink
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue
              ),
              child: Text(
                '顶部文字',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('message'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('account_circle'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('settings'),
            ),
            ListTile(
              leading: Icon(Icons.wallpaper),
              title: Text('wallpaper'),
            ),
          ],
        ),
      ),
    );
  }

}

