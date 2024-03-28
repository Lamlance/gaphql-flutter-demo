import 'dart:async';
import 'dart:developer';

import 'package:gql_http_link/gql_http_link.dart';
import 'package:ferry/ferry.dart';
import 'package:demo_graphql/src/ferry_graphql/__generated__/operation.req.gql.dart';
import 'package:demo_graphql/src/ferry_graphql/__generated__/operation.data.gql.dart';

export 'package:demo_graphql/src/ferry_graphql/__generated__/operation.data.gql.dart';

class GamesClient {
  late HttpLink _link;
  late Client _client;

  GamesClient({String graphqlEndpoint = "http://10.0.2.2:4000/graphql"}) {
    _link = HttpLink(graphqlEndpoint);
    _client = Client(link: _link);
  }

  void getAllTodo(
      {required void Function(List<GGetAllGameData_games?>?) listener}) {
    _client
        .request(
            GGetAllGameReq((b) => b..fetchPolicy = FetchPolicy.CacheAndNetwork))
        .listen((event) {
      event.graphqlErrors?.forEach((e) {
        log(e.message);
      });
      if (event.data?.games == null) {
        return listener(null);
      }
      return listener(event.data!.games!.toList());
    });
  }
}
