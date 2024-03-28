// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:demo_graphql/src/ferry_graphql/__generated__/operation.ast.gql.dart'
    as _i5;
import 'package:demo_graphql/src/ferry_graphql/__generated__/operation.data.gql.dart'
    as _i2;
import 'package:demo_graphql/src/ferry_graphql/__generated__/operation.var.gql.dart'
    as _i3;
import 'package:demo_graphql/src/ferry_graphql/__generated__/serializers.gql.dart'
    as _i6;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'operation.req.gql.g.dart';

abstract class GGetAllGameReq
    implements
        Built<GGetAllGameReq, GGetAllGameReqBuilder>,
        _i1.OperationRequest<_i2.GGetAllGameData, _i3.GGetAllGameVars> {
  GGetAllGameReq._();

  factory GGetAllGameReq([void Function(GGetAllGameReqBuilder b) updates]) =
      _$GGetAllGameReq;

  static void _initializeBuilder(GGetAllGameReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'GetAllGame',
    )
    ..executeOnListen = true;

  @override
  _i3.GGetAllGameVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GGetAllGameData? Function(
    _i2.GGetAllGameData?,
    _i2.GGetAllGameData?,
  )? get updateResult;
  @override
  _i2.GGetAllGameData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GGetAllGameData? parseData(Map<String, dynamic> json) =>
      _i2.GGetAllGameData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GGetAllGameData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GGetAllGameData, _i3.GGetAllGameVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GGetAllGameReq> get serializer =>
      _$gGetAllGameReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGetAllGameReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetAllGameReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGetAllGameReq.serializer,
        json,
      );
}

abstract class GAddGameReq
    implements
        Built<GAddGameReq, GAddGameReqBuilder>,
        _i1.OperationRequest<_i2.GAddGameData, _i3.GAddGameVars> {
  GAddGameReq._();

  factory GAddGameReq([void Function(GAddGameReqBuilder b) updates]) =
      _$GAddGameReq;

  static void _initializeBuilder(GAddGameReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'AddGame',
    )
    ..executeOnListen = true;

  @override
  _i3.GAddGameVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GAddGameData? Function(
    _i2.GAddGameData?,
    _i2.GAddGameData?,
  )? get updateResult;
  @override
  _i2.GAddGameData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GAddGameData? parseData(Map<String, dynamic> json) =>
      _i2.GAddGameData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GAddGameData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GAddGameData, _i3.GAddGameVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GAddGameReq> get serializer => _$gAddGameReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GAddGameReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAddGameReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GAddGameReq.serializer,
        json,
      );
}

abstract class GRemoveGameReq
    implements
        Built<GRemoveGameReq, GRemoveGameReqBuilder>,
        _i1.OperationRequest<_i2.GRemoveGameData, _i3.GRemoveGameVars> {
  GRemoveGameReq._();

  factory GRemoveGameReq([void Function(GRemoveGameReqBuilder b) updates]) =
      _$GRemoveGameReq;

  static void _initializeBuilder(GRemoveGameReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'RemoveGame',
    )
    ..executeOnListen = true;

  @override
  _i3.GRemoveGameVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GRemoveGameData? Function(
    _i2.GRemoveGameData?,
    _i2.GRemoveGameData?,
  )? get updateResult;
  @override
  _i2.GRemoveGameData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GRemoveGameData? parseData(Map<String, dynamic> json) =>
      _i2.GRemoveGameData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GRemoveGameData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GRemoveGameData, _i3.GRemoveGameVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GRemoveGameReq> get serializer =>
      _$gRemoveGameReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GRemoveGameReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRemoveGameReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GRemoveGameReq.serializer,
        json,
      );
}
