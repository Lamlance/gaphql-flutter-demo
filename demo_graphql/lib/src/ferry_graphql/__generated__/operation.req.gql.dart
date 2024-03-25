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

abstract class GgetAllTodosReq
    implements
        Built<GgetAllTodosReq, GgetAllTodosReqBuilder>,
        _i1.OperationRequest<_i2.GgetAllTodosData, _i3.GgetAllTodosVars> {
  GgetAllTodosReq._();

  factory GgetAllTodosReq([void Function(GgetAllTodosReqBuilder b) updates]) =
      _$GgetAllTodosReq;

  static void _initializeBuilder(GgetAllTodosReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getAllTodos',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetAllTodosVars get vars;
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
  _i2.GgetAllTodosData? Function(
    _i2.GgetAllTodosData?,
    _i2.GgetAllTodosData?,
  )? get updateResult;
  @override
  _i2.GgetAllTodosData? get optimisticResponse;
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
  _i2.GgetAllTodosData? parseData(Map<String, dynamic> json) =>
      _i2.GgetAllTodosData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetAllTodosData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetAllTodosData, _i3.GgetAllTodosVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetAllTodosReq> get serializer =>
      _$ggetAllTodosReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetAllTodosReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllTodosReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetAllTodosReq.serializer,
        json,
      );
}

abstract class GAddTodoReq
    implements
        Built<GAddTodoReq, GAddTodoReqBuilder>,
        _i1.OperationRequest<_i2.GAddTodoData, _i3.GAddTodoVars> {
  GAddTodoReq._();

  factory GAddTodoReq([void Function(GAddTodoReqBuilder b) updates]) =
      _$GAddTodoReq;

  static void _initializeBuilder(GAddTodoReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'AddTodo',
    )
    ..executeOnListen = true;

  @override
  _i3.GAddTodoVars get vars;
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
  _i2.GAddTodoData? Function(
    _i2.GAddTodoData?,
    _i2.GAddTodoData?,
  )? get updateResult;
  @override
  _i2.GAddTodoData? get optimisticResponse;
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
  _i2.GAddTodoData? parseData(Map<String, dynamic> json) =>
      _i2.GAddTodoData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GAddTodoData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GAddTodoData, _i3.GAddTodoVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GAddTodoReq> get serializer => _$gAddTodoReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GAddTodoReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAddTodoReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GAddTodoReq.serializer,
        json,
      );
}
