import 'package:flutter/material.dart';

void main(){
  runApp(Person());
}

class Person extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: Column(
          children: <Widget>[
            userTopContainer(),
            userBottomContainer()
          ],
        ),
      ),
    );
  }
}

//个人中心顶部container
class userTopContainer extends StatelessWidget{

//  userTopContainer({Key key,@required this.items}):super(key:key);

//  final  List<String> items;

  final _fontStyle = const TextStyle(fontSize: 16,color: Colors.white,letterSpacing: 1, height: 1.5);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper:BottomClipper() ,
        child:  Container(
        padding: EdgeInsets.fromLTRB(10,80, 10, 10),
        height: 280.0,
        color: Colors.pink,
        child: Column(
          children: <Widget>[
             Center(
                  child:Column(
                    children: <Widget>[
                      CircleAvatar(
                        child: Text("Johnny"),
                        radius: 40,
                      ),
                      Text("Johnny",style: _fontStyle,),
                      Text("188****0919",style: _fontStyle,)
                    ],
                  )
              ),
          ],
        ),
      ),
    );

  }
}

//个人中心底部container
class userBottomContainer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20,0,0,0),
      height: 300,
//      color: Colors.black,
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.wallpaper),
            title: Text("wallpaper"),
            trailing: Icon(Icons.message),
          ),
          ListTile(
            leading: Icon(Icons.favorite_border),
            title: Text("favorite_border"),
            trailing: Icon(Icons.local_activity),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("account_circle"),
            trailing: Icon(Icons.remove),
          )
        ],
      )
      );
  }
}

//贝塞尔曲线切割
class BottomClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height-50.0);
    var firstControlPoint = Offset(size.width/2,size.height);
    var firstEdnPoint = Offset(size.width,size.height-50.0);
    path.quadraticBezierTo(
        firstControlPoint.dx,
        firstControlPoint.dy,
        firstEdnPoint.dx,
        firstEdnPoint.dy);
    path.lineTo(size.width, size.height-50.0);
    path.lineTo(size.width, 0);
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}