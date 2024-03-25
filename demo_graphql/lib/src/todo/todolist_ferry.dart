import 'dart:developer';

import 'package:demo_graphql/src/ferry_graphql/ferry_client.dart';
import 'package:flutter/material.dart';

class TodoListFerryScreen extends StatefulWidget {
  const TodoListFerryScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TodoListFerryScreenState();
  }
}

class _TodoListFerryScreenState extends State<TodoListFerryScreen>
    with AutomaticKeepAliveClientMixin<TodoListFerryScreen> {
  static final _client = TodoClient();
  List<String> todos = [];

  @override
  bool get wantKeepAlive => true;

  void _queryTodos() {
    _client.getAllTodo().then((value) {
      log("To do querying");
      if (value == null) return log("To do querying null!");
      log('To do list length ${value.length.toString()}');
      setState(() {
        todos.removeWhere((element) => true);
        todos.addAll(value.fold<List<String>>([], (previousValue, element) {
          if (element != null) {
            previousValue.add('${element.id} - ${element.description}');
          }
          return previousValue;
        }));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          "Todo list",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24),
        ),
        TextButton(
          onPressed: () => _queryTodos(),
          child: const Text("Query!"),
        ),
        ...todos.map(
          (e) => Text(
            e,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20),
          ),
        )
      ],
    );
  }
}
