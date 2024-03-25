import 'dart:developer';

import 'package:demo_graphql/src/ferry_graphql/ferry_client.dart';
import 'package:demo_graphql/src/todo/todolist_ferry.dart';
import 'package:demo_graphql/src/todo/todolist_gql.dart';
import 'package:flutter/material.dart';

class TodoListScreen extends StatelessWidget {
  const TodoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(tabs: [
              Tab(text: "To do list ferry"),
              Tab(text: "To do list graphql_flutter")
            ]),
          ),
          body: const TabBarView(
            children: [
              SingleChildScrollView(
                padding: EdgeInsets.only(top: 16),
                child: TodoListFerryScreen(),
              ),
              SingleChildScrollView(
                padding: EdgeInsets.only(top: 16),
                child: TodoListGqlScreen(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
