import 'package:flutter/material.dart';

void main() => runApp(SecondPage());

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int counter = 0;
  List<String> lstString = ['flutter', 'is', 'confusing'];
  String displayedString = '';

  void onPressed() {
    setState(() {
      displayedString = lstString[counter];
      counter = counter < 2 ? counter + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Floating Button'),),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(displayedString),
                Padding(padding: EdgeInsets.all(15.0),),
                RaisedButton(
                  child: Text('Click me'),
                  onPressed: onPressed,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}