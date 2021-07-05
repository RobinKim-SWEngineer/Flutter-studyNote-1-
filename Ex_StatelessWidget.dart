import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'My app',
    home: SafeArea(
      child: MyScaffold(),
    ),
  ));
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          MyAppBar(
            title: Text(
              'Example title',
              style: Theme.of(context).primaryTextTheme.headline6,
            ),
          ),
          Expanded(
              child: Center(
            child: Text('Hello world!'),
          ))
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  MyAppBar({required this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        children: [
          IconButton(onPressed: null, icon: Icon(Icons.menu)),
          Expanded(child: title),
          IconButton(onPressed: null, icon: Icon(Icons.search))
        ],
      ),
    );
  }
}
