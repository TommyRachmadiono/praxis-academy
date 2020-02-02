import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sliver Grid'),
        ),
        body: SliverGridWidget(),
      ),
    );
  }
}

Color getRandomColor() {
  RandomColor _randomColor = RandomColor();
  Color _color = _randomColor.randomColor();
  return _color;
}

class SliverGridWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverGrid(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          delegate: SliverChildListDelegate([
            Container(color: getRandomColor(), height: 150.0),
            Container(color: getRandomColor(), height: 150.0),
            Container(color: getRandomColor(), height: 150.0),
          ]),
        ),

        /* Create infinity sliver grid */
        SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return new Container(color: getRandomColor(), height: 150.0);
            })),
      ],
    );
  }
}
