//import 'dart:developer';
import 'package:demo_graphql/src/games/games_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Widget content = GamesPage();
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Game List",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold)),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          body: Center(child: content),
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              // final route = MaterialPageRoute(builder: (context) => AddGamePage());
              // await Navigator.push(context, route);
            },
            backgroundColor: Colors.lightGreen,
            tooltip: 'Add',
            child: const Icon(Icons.group_add),
          )),
    );
  }
}
