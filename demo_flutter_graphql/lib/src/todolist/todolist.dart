import 'dart:developer';
import 'package:flutter/material.dart';

class TodoListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TodoListScreenState();
  }
}

class _TodoListScreenState extends State<TodoListScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("To do list"),
        ),
        body: Text("Flutter graph ql"),
      ),
    );
  }
}
