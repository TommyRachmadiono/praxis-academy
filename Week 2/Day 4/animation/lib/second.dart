import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Text('Detail Screen'),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Hero(
              tag: 'kucing',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  width: 200,
                  height: 200,
                  child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://i.pinimg.com/736x/0b/6c/fd/0b6cfda3c13a9ac9da28f75ff2f3e731.jpg"),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
