import 'dart:developer';
import 'package:demo_flutter_graphql/src/screens/add_game_page.dart';
import 'package:demo_flutter_graphql/src/screens/games_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Widget content = GamesPage();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Game List", 
          style: TextStyle(
            color: Colors.grey, 
            fontSize: 20.0,
            fontWeight: FontWeight.bold)),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Center(
          child: content
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async{
            final route = MaterialPageRoute(builder: (context) => AddGamePage());
            await Navigator.push(context, route);
          },
          backgroundColor: Colors.lightGreen,
          tooltip: 'Add',
          child: Icon(Icons.group_add),
        )
      ),
    );
  }
}