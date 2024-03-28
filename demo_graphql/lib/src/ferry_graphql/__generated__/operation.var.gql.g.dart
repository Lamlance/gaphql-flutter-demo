// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetAllGameVars> _$gGetAllGameVarsSerializer =
    new _$GGetAllGameVarsSerializer();
Serializer<GAddGameVars> _$gAddGameVarsSerializer =
    new _$GAddGameVarsSerializer();
Serializer<GRemoveGameVars> _$gRemoveGameVarsSerializer =
    new _$GRemoveGameVarsSerializer();

class _$GGetAllGameVarsSerializer
    implements StructuredSerializer<GGetAllGameVars> {
  @override
  final Iterable<Type> types = const [GGetAllGameVars, _$GGetAllGameVars];
  @override
  final String wireName = 'GGetAllGameVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetAllGameVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGetAllGameVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GGetAllGameVarsBuilder().build();
  }
}

class _$GAddGameVarsSerializer implements StructuredSerializer<GAddGameVars> {
  @override
  final Iterable<Type> types = const [GAddGameVars, _$GAddGameVars];
  @override
  final String wireName = 'GAddGameVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GAddGameVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'price',
      serializers.serialize(object.price, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GAddGameVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddGameVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GRemoveGameVarsSerializer
    implements StructuredSerializer<GRemoveGameVars> {
  @override
  final Iterable<Type> types = const [GRemoveGameVars, _$GRemoveGameVars];
  @override
  final String wireName = 'GRemoveGameVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GRemoveGameVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'game_id',
      serializers.serialize(object.game_id,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GRemoveGameVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRemoveGameVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'game_id':
          result.game_id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetAllGameVars extends GGetAllGameVars {
  factory _$GGetAllGameVars([void Function(GGetAllGameVarsBuilder)? updates]) =>
      (new GGetAllGameVarsBuilder()..update(updates))._build();

  _$GGetAllGameVars._() : super._();

  @override
  GGetAllGameVars rebuild(void Function(GGetAllGameVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetAllGameVarsBuilder toBuilder() =>
      new GGetAllGameVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAllGameVars;
  }

  @override
  int get hashCode {
    return 994529053;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GGetAllGameVars').toString();
  }
}

class GGetAllGameVarsBuilder
    implements Builder<GGetAllGameVars, GGetAllGameVarsBuilder> {
  _$GGetAllGameVars? _$v;

  GGetAllGameVarsBuilder();

  @override
  void replace(GGetAllGameVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetAllGameVars;
  }

  @override
  void update(void Function(GGetAllGameVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetAllGameVars build() => _build();

  _$GGetAllGameVars _build() {
    final _$result = _$v ?? new _$GGetAllGameVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GAddGameVars extends GAddGameVars {
  @override
  final String name;
  @override
  final int price;

  factory _$GAddGameVars([void Function(GAddGameVarsBuilder)? updates]) =>
      (new GAddGameVarsBuilder()..update(updates))._build();

  _$GAddGameVars._({required this.name, required this.price}) : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'GAddGameVars', 'name');
    BuiltValueNullFieldError.checkNotNull(price, r'GAddGameVars', 'price');
  }

  @override
  GAddGameVars rebuild(void Function(GAddGameVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddGameVarsBuilder toBuilder() => new GAddGameVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddGameVars && name == other.name && price == other.price;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAddGameVars')
          ..add('name', name)
          ..add('price', price))
        .toString();
  }
}

class GAddGameVarsBuilder
    implements Builder<GAddGameVars, GAddGameVarsBuilder> {
  _$GAddGameVars? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  GAddGameVarsBuilder();

  GAddGameVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _price = $v.price;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddGameVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddGameVars;
  }

  @override
  void update(void Function(GAddGameVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddGameVars build() => _build();

  _$GAddGameVars _build() {
    final _$result = _$v ??
        new _$GAddGameVars._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GAddGameVars', 'name'),
            price: BuiltValueNullFieldError.checkNotNull(
                price, r'GAddGameVars', 'price'));
    replace(_$result);
    return _$result;
  }
}

class _$GRemoveGameVars extends GRemoveGameVars {
  @override
  final String game_id;

  factory _$GRemoveGameVars([void Function(GRemoveGameVarsBuilder)? updates]) =>
      (new GRemoveGameVarsBuilder()..update(updates))._build();

  _$GRemoveGameVars._({required this.game_id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        game_id, r'GRemoveGameVars', 'game_id');
  }

  @override
  GRemoveGameVars rebuild(void Function(GRemoveGameVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRemoveGameVarsBuilder toBuilder() =>
      new GRemoveGameVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRemoveGameVars && game_id == other.game_id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, game_id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GRemoveGameVars')
          ..add('game_id', game_id))
        .toString();
  }
}

class GRemoveGameVarsBuilder
    implements Builder<GRemoveGameVars, GRemoveGameVarsBuilder> {
  _$GRemoveGameVars? _$v;

  String? _game_id;
  String? get game_id => _$this._game_id;
  set game_id(String? game_id) => _$this._game_id = game_id;

  GRemoveGameVarsBuilder();

  GRemoveGameVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _game_id = $v.game_id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRemoveGameVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRemoveGameVars;
  }

  @override
  void update(void Function(GRemoveGameVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRemoveGameVars build() => _build();

  _$GRemoveGameVars _build() {
    final _$result = _$v ??
        new _$GRemoveGameVars._(
            game_id: BuiltValueNullFieldError.checkNotNull(
                game_id, r'GRemoveGameVars', 'game_id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
