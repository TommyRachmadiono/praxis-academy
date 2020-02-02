import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Sliver App Bar'),
        // ),
        body: SliverAppBarWidget(),
      ),
    );
  }
}

Color getRandomColor() {
  RandomColor _randomColor = RandomColor();
  Color _color = _randomColor.randomColor();
  return _color;
}

class SliverAppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text('Sliver App Bar', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
          backgroundColor: Colors.deepOrange,
          expandedHeight: 250.0,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              'assets/forest.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),

        SliverFixedExtentList(
          itemExtent: 150.0,
          delegate: SliverChildListDelegate(
            [
              Container(color: getRandomColor()),
              Container(color: getRandomColor()),
              Container(color: getRandomColor()),
              Container(color: getRandomColor()),
              Container(color: getRandomColor()),
            ]
          ),
        ),
      ],
    );
  }
}
