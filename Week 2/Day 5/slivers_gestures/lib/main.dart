import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Collapsing List Demo')),
        body: SliverListTest(),
      ),
    );
  }
}

Color getRandomColor() {
  RandomColor _randomColor = RandomColor();
  Color _color = _randomColor.randomColor();
  return _color;
}

class SliverListTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(color: Colors.red, height: 150.0),
              Container(color: Colors.green, height: 150.0),
              Container(color: Colors.blue, height: 150.0),
            ],
          ),
        ),
        // This builds an infinite scrollable list of differently colored
        // Containers.
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              // To convert this infinite list to a list with three items,
              // uncomment the following line:
              // if (index > 3) return null;
              return Container(color: getRandomColor(), height: 150.0);
            },
            // Or, uncomment the following line:
            // childCount: 3,
          ),
        ),
      ],
    ));
  }
}
