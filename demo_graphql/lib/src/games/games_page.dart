import 'dart:developer';

import 'package:demo_graphql/src/ferry_graphql/ferry_client.dart';
import 'package:flutter/material.dart';

class GamesPage extends StatefulWidget {
  GamesPage({Key? key}) : super(key: key);
  final _client = GamesClient();
  @override
  _GamesPageState createState() => _GamesPageState();
}

class _GamesPageState extends State<GamesPage> {
  List<GGetAllGameData_games?> games = [];

  void _queryGames() {
    widget._client.getAllTodo(listener: (data) {
      games.removeWhere((element) => true);
      log(data == null ? "get null" : "get not null ${data.length}");
      if (data == null) return;
      setState(() {
        games.addAll(data);
      });
    });
  }

  // ignore: prefer_final_fields
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextButton(
          onPressed: _queryGames,
          child: const Text("Query games"),
        ),
        ...games.map(
          (game) => Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 23, left: 10, right: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          color: Colors.grey.shade300,
                          blurRadius: 30)
                    ]),
                padding: const EdgeInsets.all(20),
                child: InkWell(
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              game?.name ?? "Unknown",
                              // ignore: prefer_const_constructors
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
