// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetAllGameData> _$gGetAllGameDataSerializer =
    new _$GGetAllGameDataSerializer();
Serializer<GGetAllGameData_games> _$gGetAllGameDataGamesSerializer =
    new _$GGetAllGameData_gamesSerializer();
Serializer<GAddGameData> _$gAddGameDataSerializer =
    new _$GAddGameDataSerializer();
Serializer<GAddGameData_CreateGame> _$gAddGameDataCreateGameSerializer =
    new _$GAddGameData_CreateGameSerializer();
Serializer<GRemoveGameData> _$gRemoveGameDataSerializer =
    new _$GRemoveGameDataSerializer();
Serializer<GRemoveGameData_RemoveGame> _$gRemoveGameDataRemoveGameSerializer =
    new _$GRemoveGameData_RemoveGameSerializer();

class _$GGetAllGameDataSerializer
    implements StructuredSerializer<GGetAllGameData> {
  @override
  final Iterable<Type> types = const [GGetAllGameData, _$GGetAllGameData];
  @override
  final String wireName = 'GGetAllGameData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetAllGameData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.games;
    if (value != null) {
      result
        ..add('games')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType.nullable(GGetAllGameData_games)])));
    }
    return result;
  }

  @override
  GGetAllGameData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetAllGameDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'games':
          result.games.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GGetAllGameData_games)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetAllGameData_gamesSerializer
    implements StructuredSerializer<GGetAllGameData_games> {
  @override
  final Iterable<Type> types = const [
    GGetAllGameData_games,
    _$GGetAllGameData_games
  ];
  @override
  final String wireName = 'GGetAllGameData_games';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetAllGameData_games object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGetAllGameData_games deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetAllGameData_gamesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAddGameDataSerializer implements StructuredSerializer<GAddGameData> {
  @override
  final Iterable<Type> types = const [GAddGameData, _$GAddGameData];
  @override
  final String wireName = 'GAddGameData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GAddGameData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.CreateGame;
    if (value != null) {
      result
        ..add('CreateGame')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GAddGameData_CreateGame)));
    }
    return result;
  }

  @override
  GAddGameData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddGameDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'CreateGame':
          result.CreateGame.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GAddGameData_CreateGame))!
              as GAddGameData_CreateGame);
          break;
      }
    }

    return result.build();
  }
}

class _$GAddGameData_CreateGameSerializer
    implements StructuredSerializer<GAddGameData_CreateGame> {
  @override
  final Iterable<Type> types = const [
    GAddGameData_CreateGame,
    _$GAddGameData_CreateGame
  ];
  @override
  final String wireName = 'GAddGameData_CreateGame';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAddGameData_CreateGame object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GAddGameData_CreateGame deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddGameData_CreateGameBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GRemoveGameDataSerializer
    implements StructuredSerializer<GRemoveGameData> {
  @override
  final Iterable<Type> types = const [GRemoveGameData, _$GRemoveGameData];
  @override
  final String wireName = 'GRemoveGameData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GRemoveGameData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.RemoveGame;
    if (value != null) {
      result
        ..add('RemoveGame')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GRemoveGameData_RemoveGame)));
    }
    return result;
  }

  @override
  GRemoveGameData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRemoveGameDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'RemoveGame':
          result.RemoveGame.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GRemoveGameData_RemoveGame))!
              as GRemoveGameData_RemoveGame);
          break;
      }
    }

    return result.build();
  }
}

class _$GRemoveGameData_RemoveGameSerializer
    implements StructuredSerializer<GRemoveGameData_RemoveGame> {
  @override
  final Iterable<Type> types = const [
    GRemoveGameData_RemoveGame,
    _$GRemoveGameData_RemoveGame
  ];
  @override
  final String wireName = 'GRemoveGameData_RemoveGame';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRemoveGameData_RemoveGame object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GRemoveGameData_RemoveGame deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRemoveGameData_RemoveGameBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetAllGameData extends GGetAllGameData {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetAllGameData_games?>? games;

  factory _$GGetAllGameData([void Function(GGetAllGameDataBuilder)? updates]) =>
      (new GGetAllGameDataBuilder()..update(updates))._build();

  _$GGetAllGameData._({required this.G__typename, this.games}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetAllGameData', 'G__typename');
  }

  @override
  GGetAllGameData rebuild(void Function(GGetAllGameDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetAllGameDataBuilder toBuilder() =>
      new GGetAllGameDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAllGameData &&
        G__typename == other.G__typename &&
        games == other.games;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, games.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetAllGameData')
          ..add('G__typename', G__typename)
          ..add('games', games))
        .toString();
  }
}

class GGetAllGameDataBuilder
    implements Builder<GGetAllGameData, GGetAllGameDataBuilder> {
  _$GGetAllGameData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetAllGameData_games?>? _games;
  ListBuilder<GGetAllGameData_games?> get games =>
      _$this._games ??= new ListBuilder<GGetAllGameData_games?>();
  set games(ListBuilder<GGetAllGameData_games?>? games) =>
      _$this._games = games;

  GGetAllGameDataBuilder() {
    GGetAllGameData._initializeBuilder(this);
  }

  GGetAllGameDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _games = $v.games?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetAllGameData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetAllGameData;
  }

  @override
  void update(void Function(GGetAllGameDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetAllGameData build() => _build();

  _$GGetAllGameData _build() {
    _$GGetAllGameData _$result;
    try {
      _$result = _$v ??
          new _$GGetAllGameData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GGetAllGameData', 'G__typename'),
              games: _games?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'games';
        _games?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetAllGameData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetAllGameData_games extends GGetAllGameData_games {
  @override
  final String G__typename;
  @override
  final String? id;
  @override
  final String? name;

  factory _$GGetAllGameData_games(
          [void Function(GGetAllGameData_gamesBuilder)? updates]) =>
      (new GGetAllGameData_gamesBuilder()..update(updates))._build();

  _$GGetAllGameData_games._({required this.G__typename, this.id, this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetAllGameData_games', 'G__typename');
  }

  @override
  GGetAllGameData_games rebuild(
          void Function(GGetAllGameData_gamesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetAllGameData_gamesBuilder toBuilder() =>
      new GGetAllGameData_gamesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAllGameData_games &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetAllGameData_games')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GGetAllGameData_gamesBuilder
    implements Builder<GGetAllGameData_games, GGetAllGameData_gamesBuilder> {
  _$GGetAllGameData_games? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GGetAllGameData_gamesBuilder() {
    GGetAllGameData_games._initializeBuilder(this);
  }

  GGetAllGameData_gamesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetAllGameData_games other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetAllGameData_games;
  }

  @override
  void update(void Function(GGetAllGameData_gamesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetAllGameData_games build() => _build();

  _$GGetAllGameData_games _build() {
    final _$result = _$v ??
        new _$GGetAllGameData_games._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GGetAllGameData_games', 'G__typename'),
            id: id,
            name: name);
    replace(_$result);
    return _$result;
  }
}

class _$GAddGameData extends GAddGameData {
  @override
  final String G__typename;
  @override
  final GAddGameData_CreateGame? CreateGame;

  factory _$GAddGameData([void Function(GAddGameDataBuilder)? updates]) =>
      (new GAddGameDataBuilder()..update(updates))._build();

  _$GAddGameData._({required this.G__typename, this.CreateGame}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAddGameData', 'G__typename');
  }

  @override
  GAddGameData rebuild(void Function(GAddGameDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddGameDataBuilder toBuilder() => new GAddGameDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddGameData &&
        G__typename == other.G__typename &&
        CreateGame == other.CreateGame;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, CreateGame.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAddGameData')
          ..add('G__typename', G__typename)
          ..add('CreateGame', CreateGame))
        .toString();
  }
}

class GAddGameDataBuilder
    implements Builder<GAddGameData, GAddGameDataBuilder> {
  _$GAddGameData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GAddGameData_CreateGameBuilder? _CreateGame;
  GAddGameData_CreateGameBuilder get CreateGame =>
      _$this._CreateGame ??= new GAddGameData_CreateGameBuilder();
  set CreateGame(GAddGameData_CreateGameBuilder? CreateGame) =>
      _$this._CreateGame = CreateGame;

  GAddGameDataBuilder() {
    GAddGameData._initializeBuilder(this);
  }

  GAddGameDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _CreateGame = $v.CreateGame?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddGameData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddGameData;
  }

  @override
  void update(void Function(GAddGameDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddGameData build() => _build();

  _$GAddGameData _build() {
    _$GAddGameData _$result;
    try {
      _$result = _$v ??
          new _$GAddGameData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GAddGameData', 'G__typename'),
              CreateGame: _CreateGame?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'CreateGame';
        _CreateGame?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAddGameData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAddGameData_CreateGame extends GAddGameData_CreateGame {
  @override
  final String G__typename;
  @override
  final String? id;
  @override
  final String? name;

  factory _$GAddGameData_CreateGame(
          [void Function(GAddGameData_CreateGameBuilder)? updates]) =>
      (new GAddGameData_CreateGameBuilder()..update(updates))._build();

  _$GAddGameData_CreateGame._({required this.G__typename, this.id, this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAddGameData_CreateGame', 'G__typename');
  }

  @override
  GAddGameData_CreateGame rebuild(
          void Function(GAddGameData_CreateGameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddGameData_CreateGameBuilder toBuilder() =>
      new GAddGameData_CreateGameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddGameData_CreateGame &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAddGameData_CreateGame')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GAddGameData_CreateGameBuilder
    implements
        Builder<GAddGameData_CreateGame, GAddGameData_CreateGameBuilder> {
  _$GAddGameData_CreateGame? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GAddGameData_CreateGameBuilder() {
    GAddGameData_CreateGame._initializeBuilder(this);
  }

  GAddGameData_CreateGameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddGameData_CreateGame other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddGameData_CreateGame;
  }

  @override
  void update(void Function(GAddGameData_CreateGameBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddGameData_CreateGame build() => _build();

  _$GAddGameData_CreateGame _build() {
    final _$result = _$v ??
        new _$GAddGameData_CreateGame._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GAddGameData_CreateGame', 'G__typename'),
            id: id,
            name: name);
    replace(_$result);
    return _$result;
  }
}

class _$GRemoveGameData extends GRemoveGameData {
  @override
  final String G__typename;
  @override
  final GRemoveGameData_RemoveGame? RemoveGame;

  factory _$GRemoveGameData([void Function(GRemoveGameDataBuilder)? updates]) =>
      (new GRemoveGameDataBuilder()..update(updates))._build();

  _$GRemoveGameData._({required this.G__typename, this.RemoveGame})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GRemoveGameData', 'G__typename');
  }

  @override
  GRemoveGameData rebuild(void Function(GRemoveGameDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRemoveGameDataBuilder toBuilder() =>
      new GRemoveGameDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRemoveGameData &&
        G__typename == other.G__typename &&
        RemoveGame == other.RemoveGame;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, RemoveGame.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GRemoveGameData')
          ..add('G__typename', G__typename)
          ..add('RemoveGame', RemoveGame))
        .toString();
  }
}

class GRemoveGameDataBuilder
    implements Builder<GRemoveGameData, GRemoveGameDataBuilder> {
  _$GRemoveGameData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GRemoveGameData_RemoveGameBuilder? _RemoveGame;
  GRemoveGameData_RemoveGameBuilder get RemoveGame =>
      _$this._RemoveGame ??= new GRemoveGameData_RemoveGameBuilder();
  set RemoveGame(GRemoveGameData_RemoveGameBuilder? RemoveGame) =>
      _$this._RemoveGame = RemoveGame;

  GRemoveGameDataBuilder() {
    GRemoveGameData._initializeBuilder(this);
  }

  GRemoveGameDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _RemoveGame = $v.RemoveGame?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRemoveGameData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRemoveGameData;
  }

  @override
  void update(void Function(GRemoveGameDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRemoveGameData build() => _build();

  _$GRemoveGameData _build() {
    _$GRemoveGameData _$result;
    try {
      _$result = _$v ??
          new _$GRemoveGameData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GRemoveGameData', 'G__typename'),
              RemoveGame: _RemoveGame?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'RemoveGame';
        _RemoveGame?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GRemoveGameData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRemoveGameData_RemoveGame extends GRemoveGameData_RemoveGame {
  @override
  final String G__typename;
  @override
  final String? id;
  @override
  final String? name;

  factory _$GRemoveGameData_RemoveGame(
          [void Function(GRemoveGameData_RemoveGameBuilder)? updates]) =>
      (new GRemoveGameData_RemoveGameBuilder()..update(updates))._build();

  _$GRemoveGameData_RemoveGame._(
      {required this.G__typename, this.id, this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GRemoveGameData_RemoveGame', 'G__typename');
  }

  @override
  GRemoveGameData_RemoveGame rebuild(
          void Function(GRemoveGameData_RemoveGameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRemoveGameData_RemoveGameBuilder toBuilder() =>
      new GRemoveGameData_RemoveGameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRemoveGameData_RemoveGame &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GRemoveGameData_RemoveGame')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GRemoveGameData_RemoveGameBuilder
    implements
        Builder<GRemoveGameData_RemoveGame, GRemoveGameData_RemoveGameBuilder> {
  _$GRemoveGameData_RemoveGame? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GRemoveGameData_RemoveGameBuilder() {
    GRemoveGameData_RemoveGame._initializeBuilder(this);
  }

  GRemoveGameData_RemoveGameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRemoveGameData_RemoveGame other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRemoveGameData_RemoveGame;
  }

  @override
  void update(void Function(GRemoveGameData_RemoveGameBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRemoveGameData_RemoveGame build() => _build();

  _$GRemoveGameData_RemoveGame _build() {
    final _$result = _$v ??
        new _$GRemoveGameData_RemoveGame._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GRemoveGameData_RemoveGame', 'G__typename'),
            id: id,
            name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
