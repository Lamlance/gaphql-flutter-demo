import 'package:flutter/material.dart';

class TodoListGqlScreen extends StatefulWidget {
  const TodoListGqlScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TodoListGqlScreenState();
  }
}

class _TodoListGqlScreenState extends State<TodoListGqlScreen>
    with AutomaticKeepAliveClientMixin<TodoListGqlScreen> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(
      children: [Text("To do list of flutter_graphql")],
    );
  }
}
