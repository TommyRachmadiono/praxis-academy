import 'package:flutter/material.dart';
import 'second.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ini APP Bar HOMEPAGE'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return DetailScreen();
                }));
              },
              child: Hero(
                  tag: 'imageHero',
                  child: Image.network('https://picsum.photos/250?image=9')),
            ),
            RaisedButton(
              child: Text('CLICK me!!'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              },
            ),
            Image(
              image: AssetImage('assets/logo-putih-kotak.png'),
              fit: BoxFit.contain,
            ),
            Image(
              image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRWH48ZCFtZs9dptnr9opMckjzghA4Vxlyn2ZLaAiRnMpNKW9bH"),
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hero widget'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
              tag: 'imageHero',
              child: Image.network('https://picsum.photos/250?image=9')),
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("APP bar SECOND ROUTE"),
          automaticallyImplyLeading: true,
        ),
        body: Center(
          child: RaisedButton(
            child: Text("BACK TO HOMEPAGE"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}

class SecondRandom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SomePage();
    
  }
}

class SomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("APP bar RANDOM"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("BACK TO HOMEPAGE"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}