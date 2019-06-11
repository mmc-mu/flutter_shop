import 'package:flutter/material.dart';
import 'package:flutter_shop/widget/Demo1.dart';
class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
//      home: new Scaffold(
//        body: new Center(child:new Text("我的")),
//      ),
       home:  new PageWidget(),
        routes: <String,WidgetBuilder>{
          "/demo1":(BuildContext context)=>new Demo1(),
        }
    );
  }
}
class PageWidget extends StatefulWidget {
  @override
  _PageWidgetState createState() => new _PageWidgetState();
}

class _PageWidgetState extends State<PageWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(child: new RaisedButton(onPressed: _pushPage,child: new Text('跳转'),),),
    );
  }
  _pushPage(){
    Navigator.of(context).pushNamed('/demo1');
//    Navigator.of(context).push(new MaterialPageRoute(builder: (context){
//      return new Demo1();
//    },));
  }
}
