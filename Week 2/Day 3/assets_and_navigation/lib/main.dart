import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'second.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
      // home: HomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/secondNamed': (context) => SecondNamedPage(),
        ExtractParameters.routeName: (context) => ExtractParameters(),
      },
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
              child: Text('Navigate to another routes using Navigator.push'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
              },
            ),
            RaisedButton(
              child: Text('Navigate with named routes'),
              onPressed: () {
                Navigator.pushNamed(context, '/secondNamed');
              },
            ),
            RaisedButton(
              child: Text('Navigate with parameters to named routes'),
              onPressed: () {
                Navigator.pushNamed(context, ExtractParameters.routeName,
                    arguments: PassParameter('extract arguments',
                        'this is message extracted in the build method'));
              },
            ),
            Builder(
              builder: (ctx) => RaisedButton(
                child: Text('Return data from second screen'),
                onPressed: () {
                  _navigateAndDisplayOption(ctx);
                },
              ),
            ),
            TodoScreen(
              todos: List.generate(
                5,
                (i) => Todo(
                  'Todo $i',
                  'A description of what needs to be done for Todo $i',
                ),
              ),
            ),
            Image(
              image: AssetImage('assets/logo-putih-kotak.png'),
              fit: BoxFit.contain,
            ),
            Image(
              height: 150,
              image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRWH48ZCFtZs9dptnr9opMckjzghA4Vxlyn2ZLaAiRnMpNKW9bH"),
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }

  _navigateAndDisplayOption(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SelectionScreen()),
    );

    Scaffold.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(
        content: Text("$result"),
      ));
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

class ExtractParameters extends StatelessWidget {
  static const routeName = '/passParameters';

  @override
  Widget build(BuildContext context) {
    final PassParameter param = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(param.title),
      ),
      body: Center(
        child: Text(param.message),
      ),
    );
  }
}

class TodoScreen extends StatelessWidget {
  final List<Todo> todos;

  const TodoScreen({Key key, this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: todos.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(todos[index].title),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailTodo(),
                settings: RouteSettings(arguments: todos[index]),
              ),
            );
          },
        );
      },
    );
  }
}

class PassParameter {
  final String title;
  final String message;

  PassParameter(this.title, this.message);
}

class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);
}
