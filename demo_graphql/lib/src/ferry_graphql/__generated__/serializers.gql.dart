// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:demo_graphql/src/ferry_graphql/__generated__/operation.data.gql.dart'
    show
        GAddTodoData,
        GAddTodoData_addTodo,
        GgetAllTodosData,
        GgetAllTodosData_todos;
import 'package:demo_graphql/src/ferry_graphql/__generated__/operation.req.gql.dart'
    show GAddTodoReq, GgetAllTodosReq;
import 'package:demo_graphql/src/ferry_graphql/__generated__/operation.var.gql.dart'
    show GAddTodoVars, GgetAllTodosVars;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GAddTodoData,
  GAddTodoData_addTodo,
  GAddTodoReq,
  GAddTodoVars,
  GgetAllTodosData,
  GgetAllTodosData_todos,
  GgetAllTodosReq,
  GgetAllTodosVars,
])
final Serializers serializers = _serializersBuilder.build();
