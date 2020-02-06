import 'package:assets_and_navigation/main.dart';
import 'package:flutter/material.dart';

// void main() => runApp(SecondPage());

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("APP bar SECOND PAGE"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("BACK TO FIRST ROUTE using Navigator.pop"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

class SecondNamedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Named Page'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('BACK TO FIRST NAMED ROUTE'),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick any'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context, 'Yep!');
                },
                child: Text('Yep!'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context, 'Yoink!');
                },
                child: Text('Yoink!'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailTodo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Todo todo = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(todo.description),
      ),
    );
  }
}
