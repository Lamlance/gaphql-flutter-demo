// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:demo_graphql/src/ferry_graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'operation.var.gql.g.dart';

abstract class GGetAllGameVars
    implements Built<GGetAllGameVars, GGetAllGameVarsBuilder> {
  GGetAllGameVars._();

  factory GGetAllGameVars([void Function(GGetAllGameVarsBuilder b) updates]) =
      _$GGetAllGameVars;

  static Serializer<GGetAllGameVars> get serializer =>
      _$gGetAllGameVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetAllGameVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetAllGameVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetAllGameVars.serializer,
        json,
      );
}

abstract class GAddGameVars
    implements Built<GAddGameVars, GAddGameVarsBuilder> {
  GAddGameVars._();

  factory GAddGameVars([void Function(GAddGameVarsBuilder b) updates]) =
      _$GAddGameVars;

  String get name;
  int get price;
  static Serializer<GAddGameVars> get serializer => _$gAddGameVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAddGameVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAddGameVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAddGameVars.serializer,
        json,
      );
}

abstract class GRemoveGameVars
    implements Built<GRemoveGameVars, GRemoveGameVarsBuilder> {
  GRemoveGameVars._();

  factory GRemoveGameVars([void Function(GRemoveGameVarsBuilder b) updates]) =
      _$GRemoveGameVars;

  String get game_id;
  static Serializer<GRemoveGameVars> get serializer =>
      _$gRemoveGameVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRemoveGameVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRemoveGameVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRemoveGameVars.serializer,
        json,
      );
}
