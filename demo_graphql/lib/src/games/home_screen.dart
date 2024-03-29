//import 'dart:developer';
import 'dart:developer';

import 'package:demo_graphql/src/ferry_graphql/ferry_client.dart';
import 'package:demo_graphql/src/games/games_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  final _client = GamesClient();

  @override
  State createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _txtController = TextEditingController();
  List<GGetAllGameData_games?> games = [];

  void _showModalBottomScheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (ctx) {
          return Column(
            children: [
              TextField(
                controller: _txtController,
              ),
              TextButton(
                  onPressed: () {
                    widget._client.createGame(_txtController.text,
                        listener: (data) {
                      log(data == null ? "Create null" : "Create ${data.name}");
                    });
                  },
                  child: const Text("Submit"))
            ],
          );
        });
  }

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
            onPressed: () {
              _showModalBottomScheet(context);
            },
            backgroundColor: Colors.lightGreen,
            tooltip: 'Add',
            child: const Icon(Icons.group_add),
          )),
    );
  }
}
