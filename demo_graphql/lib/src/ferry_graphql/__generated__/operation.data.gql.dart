// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:demo_graphql/src/ferry_graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'operation.data.gql.g.dart';

abstract class GgetAllTodosData
    implements Built<GgetAllTodosData, GgetAllTodosDataBuilder> {
  GgetAllTodosData._();

  factory GgetAllTodosData([void Function(GgetAllTodosDataBuilder b) updates]) =
      _$GgetAllTodosData;

  static void _initializeBuilder(GgetAllTodosDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GgetAllTodosData_todos?>? get todos;
  static Serializer<GgetAllTodosData> get serializer =>
      _$ggetAllTodosDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllTodosData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllTodosData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAllTodosData.serializer,
        json,
      );
}

abstract class GgetAllTodosData_todos
    implements Built<GgetAllTodosData_todos, GgetAllTodosData_todosBuilder> {
  GgetAllTodosData_todos._();

  factory GgetAllTodosData_todos(
          [void Function(GgetAllTodosData_todosBuilder b) updates]) =
      _$GgetAllTodosData_todos;

  static void _initializeBuilder(GgetAllTodosData_todosBuilder b) =>
      b..G__typename = 'Todo';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get description;
  String get id;
  static Serializer<GgetAllTodosData_todos> get serializer =>
      _$ggetAllTodosDataTodosSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllTodosData_todos.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllTodosData_todos? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAllTodosData_todos.serializer,
        json,
      );
}

abstract class GAddTodoData
    implements Built<GAddTodoData, GAddTodoDataBuilder> {
  GAddTodoData._();

  factory GAddTodoData([void Function(GAddTodoDataBuilder b) updates]) =
      _$GAddTodoData;

  static void _initializeBuilder(GAddTodoDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GAddTodoData_addTodo? get addTodo;
  static Serializer<GAddTodoData> get serializer => _$gAddTodoDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAddTodoData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAddTodoData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAddTodoData.serializer,
        json,
      );
}

abstract class GAddTodoData_addTodo
    implements Built<GAddTodoData_addTodo, GAddTodoData_addTodoBuilder> {
  GAddTodoData_addTodo._();

  factory GAddTodoData_addTodo(
          [void Function(GAddTodoData_addTodoBuilder b) updates]) =
      _$GAddTodoData_addTodo;

  static void _initializeBuilder(GAddTodoData_addTodoBuilder b) =>
      b..G__typename = 'Todo';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get description;
  String get id;
  static Serializer<GAddTodoData_addTodo> get serializer =>
      _$gAddTodoDataAddTodoSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAddTodoData_addTodo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAddTodoData_addTodo? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAddTodoData_addTodo.serializer,
        json,
      );
}
