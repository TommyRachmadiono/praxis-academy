import 'package:flutter/material.dart';
import 'package:widget_layout/second.dart';
import 'second.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  HomePage(),
      initialRoute: '/',
      routes: <String, WidgetBuilder> {
        //'/' : (context) => NewClass(),
        "/SecondPage": (context) => SecondPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Week 2"),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.navigate_next, color: Colors.deepOrangeAccent,),
                iconSize: 80,
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) =>SecondPage()));},
              ),
              MyCard(Text('Flutter'), Icon(Icons.favorite, color: Colors.redAccent, size: 40,)),
              MyCard(Text('Donut'), Icon(Icons.donut_large, color: Colors.brown, size: 40,)),
              MyCard(Text('See'), Icon(Icons.visibility, color: Colors.blue, size: 40,)),
            ],
          ),
        ),
      );
  }

}

class MyCard extends StatelessWidget {
  MyCard(this.title, this.icon);

  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20.0),
      child: Card(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              this.title, 
              this.icon,
              ],
          ),
        ),
      ),
    );
  }
}
