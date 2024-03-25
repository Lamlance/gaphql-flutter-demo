// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetAllTodosVars> _$ggetAllTodosVarsSerializer =
    new _$GgetAllTodosVarsSerializer();
Serializer<GAddTodoVars> _$gAddTodoVarsSerializer =
    new _$GAddTodoVarsSerializer();

class _$GgetAllTodosVarsSerializer
    implements StructuredSerializer<GgetAllTodosVars> {
  @override
  final Iterable<Type> types = const [GgetAllTodosVars, _$GgetAllTodosVars];
  @override
  final String wireName = 'GgetAllTodosVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GgetAllTodosVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GgetAllTodosVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GgetAllTodosVarsBuilder().build();
  }
}

class _$GAddTodoVarsSerializer implements StructuredSerializer<GAddTodoVars> {
  @override
  final Iterable<Type> types = const [GAddTodoVars, _$GAddTodoVars];
  @override
  final String wireName = 'GAddTodoVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GAddTodoVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GAddTodoVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddTodoVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetAllTodosVars extends GgetAllTodosVars {
  factory _$GgetAllTodosVars(
          [void Function(GgetAllTodosVarsBuilder)? updates]) =>
      (new GgetAllTodosVarsBuilder()..update(updates))._build();

  _$GgetAllTodosVars._() : super._();

  @override
  GgetAllTodosVars rebuild(void Function(GgetAllTodosVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAllTodosVarsBuilder toBuilder() =>
      new GgetAllTodosVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetAllTodosVars;
  }

  @override
  int get hashCode {
    return 437098886;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GgetAllTodosVars').toString();
  }
}

class GgetAllTodosVarsBuilder
    implements Builder<GgetAllTodosVars, GgetAllTodosVarsBuilder> {
  _$GgetAllTodosVars? _$v;

  GgetAllTodosVarsBuilder();

  @override
  void replace(GgetAllTodosVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAllTodosVars;
  }

  @override
  void update(void Function(GgetAllTodosVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAllTodosVars build() => _build();

  _$GgetAllTodosVars _build() {
    final _$result = _$v ?? new _$GgetAllTodosVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GAddTodoVars extends GAddTodoVars {
  @override
  final String description;

  factory _$GAddTodoVars([void Function(GAddTodoVarsBuilder)? updates]) =>
      (new GAddTodoVarsBuilder()..update(updates))._build();

  _$GAddTodoVars._({required this.description}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        description, r'GAddTodoVars', 'description');
  }

  @override
  GAddTodoVars rebuild(void Function(GAddTodoVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddTodoVarsBuilder toBuilder() => new GAddTodoVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddTodoVars && description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAddTodoVars')
          ..add('description', description))
        .toString();
  }
}

class GAddTodoVarsBuilder
    implements Builder<GAddTodoVars, GAddTodoVarsBuilder> {
  _$GAddTodoVars? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GAddTodoVarsBuilder();

  GAddTodoVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddTodoVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddTodoVars;
  }

  @override
  void update(void Function(GAddTodoVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddTodoVars build() => _build();

  _$GAddTodoVars _build() {
    final _$result = _$v ??
        new _$GAddTodoVars._(
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'GAddTodoVars', 'description'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
