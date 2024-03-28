// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:demo_graphql/src/ferry_graphql/__generated__/operation.data.gql.dart'
    show
        GAddGameData,
        GAddGameData_CreateGame,
        GGetAllGameData,
        GGetAllGameData_games,
        GRemoveGameData,
        GRemoveGameData_RemoveGame;
import 'package:demo_graphql/src/ferry_graphql/__generated__/operation.req.gql.dart'
    show GAddGameReq, GGetAllGameReq, GRemoveGameReq;
import 'package:demo_graphql/src/ferry_graphql/__generated__/operation.var.gql.dart'
    show GAddGameVars, GGetAllGameVars, GRemoveGameVars;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GAddGameData,
  GAddGameData_CreateGame,
  GAddGameReq,
  GAddGameVars,
  GGetAllGameData,
  GGetAllGameData_games,
  GGetAllGameReq,
  GGetAllGameVars,
  GRemoveGameData,
  GRemoveGameData_RemoveGame,
  GRemoveGameReq,
  GRemoveGameVars,
])
final Serializers serializers = _serializersBuilder.build();
