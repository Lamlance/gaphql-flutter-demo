import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';


class GamesPage extends StatefulWidget {
  const GamesPage({Key? key}):super(key: key);

  @override
  _GamesPageState createState() => _GamesPageState();
}

class _GamesPageState extends State<GamesPage> {
  List games = [];
  // ignore: prefer_final_fields
  String _query = """
    query {
      games {
        id
        name
        price
        publisher {
          id
          publisher_name
          location
          since
        }
        game_type {
          id
          type_name
          description
        }
      }
    }
  """;

  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(document: gql(_query)),
      builder: (result, {fetchMore, refetch}){
        if (result.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        games = result.data!['games'];
        return (games.isNotEmpty) ? ListView.builder(
        itemCount: games.length,
        itemBuilder: (context, index) {
          final game = games[index];

          return Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 23, left: 10, right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow:[
                    BoxShadow(
                      offset: Offset(0, 10),
                      color: Colors.grey.shade300,
                      blurRadius: 30
                    )
                  ]
                ),
              padding: const EdgeInsets.all(20),
              child: InkWell(
                // ignore: avoid_unnecessary_containers
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children:[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("${game["name"]}", 
                            // ignore: prefer_const_constructors
                            style:TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold)
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    child: Container(
                                      child: Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                      ),
                                    ),
                                    onTap: () async{
                                      print("Delete game");
                                    },
                                  )
                                ],
                              )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                        child: Text("Publisher: ${game["publisher"]?? "N/A"}"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, top: 8),
                        child: Text("Type: ${game["game_type"]?? "N/A"}"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                        child: Text("${game["price"]?? "N/A"} USD"),
                      ),
                    ],
                  ),
                )
              )
            )],
          );
        }): 
        const Center(
        child: Text("No games found"),
                  );
      },
    );
  }
} 