import 'dart:async';
import 'dart:developer';

import 'package:gql_http_link/gql_http_link.dart';
import 'package:ferry/ferry.dart';
import 'package:demo_graphql/src/ferry_graphql/__generated__/operation.req.gql.dart';
import 'package:demo_graphql/src/ferry_graphql/__generated__/operation.data.gql.dart';

export 'package:demo_graphql/src/ferry_graphql/__generated__/operation.data.gql.dart';

class TodoClient {
  late HttpLink _link;
  late Client _client;

  TodoClient({String graphqlEndpoint = "http://10.0.2.2:4000"}) {
    _link = HttpLink(graphqlEndpoint);
    _client = Client(link: _link);
  }

  void getAllTodo(
      {required void Function(List<GgetAllTodosData_todos?>?) listener}) {
    _client.request(GgetAllTodosReq()).listen((event) {
      event.graphqlErrors?.forEach((e) {
        log(e.message);
      });
      MemoryStore()
      if (event.data?.todos == null) {
        return listener(null);
      }
      return listener(event.data!.todos!.toList());
    });
  }
}
