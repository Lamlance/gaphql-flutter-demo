// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:demo_graphql/src/ferry_graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'operation.var.gql.g.dart';

abstract class GgetAllTodosVars
    implements Built<GgetAllTodosVars, GgetAllTodosVarsBuilder> {
  GgetAllTodosVars._();

  factory GgetAllTodosVars([void Function(GgetAllTodosVarsBuilder b) updates]) =
      _$GgetAllTodosVars;

  static Serializer<GgetAllTodosVars> get serializer =>
      _$ggetAllTodosVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllTodosVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllTodosVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAllTodosVars.serializer,
        json,
      );
}

abstract class GAddTodoVars
    implements Built<GAddTodoVars, GAddTodoVarsBuilder> {
  GAddTodoVars._();

  factory GAddTodoVars([void Function(GAddTodoVarsBuilder b) updates]) =
      _$GAddTodoVars;

  String get description;
  static Serializer<GAddTodoVars> get serializer => _$gAddTodoVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAddTodoVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAddTodoVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAddTodoVars.serializer,
        json,
      );
}
