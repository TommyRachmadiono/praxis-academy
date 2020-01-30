import 'dart:math';
import 'package:flutter/material.dart';
import 'package:animation/second.dart';
import 'package:transparent_image/transparent_image.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Animation'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                FadeInWidget(),
              ],
            ),
            HeroWidget(),
            AnimatedContainerWidget(),
          ],
        ));
  }
}

class AnimatedContainerWidget extends StatefulWidget {
  @override
  _AnimatedContainerWidgetState createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  Random random = new Random();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {});
      },
      child: AnimatedContainer(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(random.nextDouble()*64),
          color: Color.fromARGB(255, random.nextInt(256), random.nextInt(256),
              random.nextInt(256)),
        ),
        duration: Duration(seconds: 1),
        curve: Curves.easeInOutBack,
        height: 50.0 + random.nextInt(101),
        width: 50.0 + random.nextInt(101),
      ),
    );
  }
}

class HeroWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailPage();
        }));
        //  timeDilation = 1;
      },
      child: Hero(
        tag: 'kucing',
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Container(
            width: 100,
            height: 100,
            child: FadeInImage.assetNetwork(
              placeholder: 'assets/loading.gif',
              image: "https://i.pinimg.com/736x/0b/6c/fd/0b6cfda3c13a9ac9da28f75ff2f3e731.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

class FadeInWidget extends StatefulWidget {
  @override
  _FadeInWidgetState createState() => _FadeInWidgetState();
}

class _FadeInWidgetState extends State<FadeInWidget> {
  double opacityLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        MaterialButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            setState(() {
              // opacityLevel = 1;
              opacityLevel == 0 ? opacityLevel = 1 : opacityLevel = 0;
            });
          },
          child: Text('CLICK ME FadeIn animation'),
        ),
        AnimatedOpacity(
          opacity: opacityLevel,
          duration: Duration(seconds: 1),
          child: Text('ini teks bro'),
        ),
      ],
    );
  }
}

