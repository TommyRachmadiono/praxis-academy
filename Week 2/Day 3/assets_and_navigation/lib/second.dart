import 'package:flutter/material.dart';

// void main() => runApp(SecondPage());

class SecondPage extends StatelessWidget {
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
        title: Text("APP bar SECOND PAGE"),
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
