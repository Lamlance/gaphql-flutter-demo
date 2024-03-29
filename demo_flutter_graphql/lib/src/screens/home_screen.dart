//import 'dart:developer';
import 'package:demo_flutter_graphql/src/screens/add_game_page.dart';
import 'package:demo_flutter_graphql/src/screens/games_page.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

String addGame() {
  return """
mutation AddGame(\$name: String!, \$price: Int!) {
  CreateGame(name: \$name, price: \$price, typeID: "1", publisherID: "1") {
    id
    name
  }
}
""";
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _txtController = TextEditingController();

  void _showModalBottomScheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (ctx) {
        return Mutation(
          options: MutationOptions(
            document: gql(addGame()),
            onCompleted: (dynamic resultData) {
              print(resultData);
            },
          ),
          builder: (addGame, result) {
            return Column(
              children: [
                TextField(
                  controller: _txtController,
                ),
                TextButton(
                    onPressed: () {
                      addGame({"name": _txtController.text, "price": 123});
                    },
                    child: const Text("Submit"))
              ],
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content = const GamesPage();
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
              _showModalBottomScheet(context);
            },
            backgroundColor: Colors.lightGreen,
            tooltip: 'Add',
            child: const Icon(Icons.group_add),
          )),
    );
  }
}
