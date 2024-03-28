// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:demo_graphql/src/ferry_graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'operation.data.gql.g.dart';

abstract class GGetAllGameData
    implements Built<GGetAllGameData, GGetAllGameDataBuilder> {
  GGetAllGameData._();

  factory GGetAllGameData([void Function(GGetAllGameDataBuilder b) updates]) =
      _$GGetAllGameData;

  static void _initializeBuilder(GGetAllGameDataBuilder b) =>
      b..G__typename = 'RootQueryType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetAllGameData_games?>? get games;
  static Serializer<GGetAllGameData> get serializer =>
      _$gGetAllGameDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetAllGameData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetAllGameData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetAllGameData.serializer,
        json,
      );
}

abstract class GGetAllGameData_games
    implements Built<GGetAllGameData_games, GGetAllGameData_gamesBuilder> {
  GGetAllGameData_games._();

  factory GGetAllGameData_games(
          [void Function(GGetAllGameData_gamesBuilder b) updates]) =
      _$GGetAllGameData_games;

  static void _initializeBuilder(GGetAllGameData_gamesBuilder b) =>
      b..G__typename = 'Game';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get id;
  String? get name;
  static Serializer<GGetAllGameData_games> get serializer =>
      _$gGetAllGameDataGamesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetAllGameData_games.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetAllGameData_games? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetAllGameData_games.serializer,
        json,
      );
}

abstract class GAddGameData
    implements Built<GAddGameData, GAddGameDataBuilder> {
  GAddGameData._();

  factory GAddGameData([void Function(GAddGameDataBuilder b) updates]) =
      _$GAddGameData;

  static void _initializeBuilder(GAddGameDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GAddGameData_CreateGame? get CreateGame;
  static Serializer<GAddGameData> get serializer => _$gAddGameDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAddGameData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAddGameData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAddGameData.serializer,
        json,
      );
}

abstract class GAddGameData_CreateGame
    implements Built<GAddGameData_CreateGame, GAddGameData_CreateGameBuilder> {
  GAddGameData_CreateGame._();

  factory GAddGameData_CreateGame(
          [void Function(GAddGameData_CreateGameBuilder b) updates]) =
      _$GAddGameData_CreateGame;

  static void _initializeBuilder(GAddGameData_CreateGameBuilder b) =>
      b..G__typename = 'Game';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get id;
  String? get name;
  static Serializer<GAddGameData_CreateGame> get serializer =>
      _$gAddGameDataCreateGameSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAddGameData_CreateGame.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAddGameData_CreateGame? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAddGameData_CreateGame.serializer,
        json,
      );
}

abstract class GRemoveGameData
    implements Built<GRemoveGameData, GRemoveGameDataBuilder> {
  GRemoveGameData._();

  factory GRemoveGameData([void Function(GRemoveGameDataBuilder b) updates]) =
      _$GRemoveGameData;

  static void _initializeBuilder(GRemoveGameDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GRemoveGameData_RemoveGame? get RemoveGame;
  static Serializer<GRemoveGameData> get serializer =>
      _$gRemoveGameDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRemoveGameData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRemoveGameData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRemoveGameData.serializer,
        json,
      );
}

abstract class GRemoveGameData_RemoveGame
    implements
        Built<GRemoveGameData_RemoveGame, GRemoveGameData_RemoveGameBuilder> {
  GRemoveGameData_RemoveGame._();

  factory GRemoveGameData_RemoveGame(
          [void Function(GRemoveGameData_RemoveGameBuilder b) updates]) =
      _$GRemoveGameData_RemoveGame;

  static void _initializeBuilder(GRemoveGameData_RemoveGameBuilder b) =>
      b..G__typename = 'Game';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get id;
  String? get name;
  static Serializer<GRemoveGameData_RemoveGame> get serializer =>
      _$gRemoveGameDataRemoveGameSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRemoveGameData_RemoveGame.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRemoveGameData_RemoveGame? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRemoveGameData_RemoveGame.serializer,
        json,
      );
}
