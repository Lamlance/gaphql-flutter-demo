// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetAllTodosData> _$ggetAllTodosDataSerializer =
    new _$GgetAllTodosDataSerializer();
Serializer<GgetAllTodosData_todos> _$ggetAllTodosDataTodosSerializer =
    new _$GgetAllTodosData_todosSerializer();
Serializer<GAddTodoData> _$gAddTodoDataSerializer =
    new _$GAddTodoDataSerializer();
Serializer<GAddTodoData_addTodo> _$gAddTodoDataAddTodoSerializer =
    new _$GAddTodoData_addTodoSerializer();

class _$GgetAllTodosDataSerializer
    implements StructuredSerializer<GgetAllTodosData> {
  @override
  final Iterable<Type> types = const [GgetAllTodosData, _$GgetAllTodosData];
  @override
  final String wireName = 'GgetAllTodosData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GgetAllTodosData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.todos;
    if (value != null) {
      result
        ..add('todos')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType.nullable(GgetAllTodosData_todos)])));
    }
    return result;
  }

  @override
  GgetAllTodosData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetAllTodosDataBuilder();

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
        case 'todos':
          result.todos.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GgetAllTodosData_todos)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetAllTodosData_todosSerializer
    implements StructuredSerializer<GgetAllTodosData_todos> {
  @override
  final Iterable<Type> types = const [
    GgetAllTodosData_todos,
    _$GgetAllTodosData_todos
  ];
  @override
  final String wireName = 'GgetAllTodosData_todos';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetAllTodosData_todos object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GgetAllTodosData_todos deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetAllTodosData_todosBuilder();

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
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GAddTodoDataSerializer implements StructuredSerializer<GAddTodoData> {
  @override
  final Iterable<Type> types = const [GAddTodoData, _$GAddTodoData];
  @override
  final String wireName = 'GAddTodoData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GAddTodoData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.addTodo;
    if (value != null) {
      result
        ..add('addTodo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GAddTodoData_addTodo)));
    }
    return result;
  }

  @override
  GAddTodoData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddTodoDataBuilder();

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
        case 'addTodo':
          result.addTodo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GAddTodoData_addTodo))!
              as GAddTodoData_addTodo);
          break;
      }
    }

    return result.build();
  }
}

class _$GAddTodoData_addTodoSerializer
    implements StructuredSerializer<GAddTodoData_addTodo> {
  @override
  final Iterable<Type> types = const [
    GAddTodoData_addTodo,
    _$GAddTodoData_addTodo
  ];
  @override
  final String wireName = 'GAddTodoData_addTodo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAddTodoData_addTodo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GAddTodoData_addTodo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddTodoData_addTodoBuilder();

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
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetAllTodosData extends GgetAllTodosData {
  @override
  final String G__typename;
  @override
  final BuiltList<GgetAllTodosData_todos?>? todos;

  factory _$GgetAllTodosData(
          [void Function(GgetAllTodosDataBuilder)? updates]) =>
      (new GgetAllTodosDataBuilder()..update(updates))._build();

  _$GgetAllTodosData._({required this.G__typename, this.todos}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetAllTodosData', 'G__typename');
  }

  @override
  GgetAllTodosData rebuild(void Function(GgetAllTodosDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAllTodosDataBuilder toBuilder() =>
      new GgetAllTodosDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetAllTodosData &&
        G__typename == other.G__typename &&
        todos == other.todos;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, todos.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetAllTodosData')
          ..add('G__typename', G__typename)
          ..add('todos', todos))
        .toString();
  }
}

class GgetAllTodosDataBuilder
    implements Builder<GgetAllTodosData, GgetAllTodosDataBuilder> {
  _$GgetAllTodosData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GgetAllTodosData_todos?>? _todos;
  ListBuilder<GgetAllTodosData_todos?> get todos =>
      _$this._todos ??= new ListBuilder<GgetAllTodosData_todos?>();
  set todos(ListBuilder<GgetAllTodosData_todos?>? todos) =>
      _$this._todos = todos;

  GgetAllTodosDataBuilder() {
    GgetAllTodosData._initializeBuilder(this);
  }

  GgetAllTodosDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _todos = $v.todos?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetAllTodosData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAllTodosData;
  }

  @override
  void update(void Function(GgetAllTodosDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAllTodosData build() => _build();

  _$GgetAllTodosData _build() {
    _$GgetAllTodosData _$result;
    try {
      _$result = _$v ??
          new _$GgetAllTodosData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetAllTodosData', 'G__typename'),
              todos: _todos?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'todos';
        _todos?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetAllTodosData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetAllTodosData_todos extends GgetAllTodosData_todos {
  @override
  final String G__typename;
  @override
  final String description;
  @override
  final String id;

  factory _$GgetAllTodosData_todos(
          [void Function(GgetAllTodosData_todosBuilder)? updates]) =>
      (new GgetAllTodosData_todosBuilder()..update(updates))._build();

  _$GgetAllTodosData_todos._(
      {required this.G__typename, required this.description, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetAllTodosData_todos', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        description, r'GgetAllTodosData_todos', 'description');
    BuiltValueNullFieldError.checkNotNull(id, r'GgetAllTodosData_todos', 'id');
  }

  @override
  GgetAllTodosData_todos rebuild(
          void Function(GgetAllTodosData_todosBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAllTodosData_todosBuilder toBuilder() =>
      new GgetAllTodosData_todosBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetAllTodosData_todos &&
        G__typename == other.G__typename &&
        description == other.description &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetAllTodosData_todos')
          ..add('G__typename', G__typename)
          ..add('description', description)
          ..add('id', id))
        .toString();
  }
}

class GgetAllTodosData_todosBuilder
    implements Builder<GgetAllTodosData_todos, GgetAllTodosData_todosBuilder> {
  _$GgetAllTodosData_todos? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GgetAllTodosData_todosBuilder() {
    GgetAllTodosData_todos._initializeBuilder(this);
  }

  GgetAllTodosData_todosBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _description = $v.description;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetAllTodosData_todos other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAllTodosData_todos;
  }

  @override
  void update(void Function(GgetAllTodosData_todosBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAllTodosData_todos build() => _build();

  _$GgetAllTodosData_todos _build() {
    final _$result = _$v ??
        new _$GgetAllTodosData_todos._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GgetAllTodosData_todos', 'G__typename'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'GgetAllTodosData_todos', 'description'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GgetAllTodosData_todos', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GAddTodoData extends GAddTodoData {
  @override
  final String G__typename;
  @override
  final GAddTodoData_addTodo? addTodo;

  factory _$GAddTodoData([void Function(GAddTodoDataBuilder)? updates]) =>
      (new GAddTodoDataBuilder()..update(updates))._build();

  _$GAddTodoData._({required this.G__typename, this.addTodo}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAddTodoData', 'G__typename');
  }

  @override
  GAddTodoData rebuild(void Function(GAddTodoDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddTodoDataBuilder toBuilder() => new GAddTodoDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddTodoData &&
        G__typename == other.G__typename &&
        addTodo == other.addTodo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, addTodo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAddTodoData')
          ..add('G__typename', G__typename)
          ..add('addTodo', addTodo))
        .toString();
  }
}

class GAddTodoDataBuilder
    implements Builder<GAddTodoData, GAddTodoDataBuilder> {
  _$GAddTodoData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GAddTodoData_addTodoBuilder? _addTodo;
  GAddTodoData_addTodoBuilder get addTodo =>
      _$this._addTodo ??= new GAddTodoData_addTodoBuilder();
  set addTodo(GAddTodoData_addTodoBuilder? addTodo) =>
      _$this._addTodo = addTodo;

  GAddTodoDataBuilder() {
    GAddTodoData._initializeBuilder(this);
  }

  GAddTodoDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _addTodo = $v.addTodo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddTodoData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddTodoData;
  }

  @override
  void update(void Function(GAddTodoDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddTodoData build() => _build();

  _$GAddTodoData _build() {
    _$GAddTodoData _$result;
    try {
      _$result = _$v ??
          new _$GAddTodoData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GAddTodoData', 'G__typename'),
              addTodo: _addTodo?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addTodo';
        _addTodo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAddTodoData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAddTodoData_addTodo extends GAddTodoData_addTodo {
  @override
  final String G__typename;
  @override
  final String description;
  @override
  final String id;

  factory _$GAddTodoData_addTodo(
          [void Function(GAddTodoData_addTodoBuilder)? updates]) =>
      (new GAddTodoData_addTodoBuilder()..update(updates))._build();

  _$GAddTodoData_addTodo._(
      {required this.G__typename, required this.description, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAddTodoData_addTodo', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        description, r'GAddTodoData_addTodo', 'description');
    BuiltValueNullFieldError.checkNotNull(id, r'GAddTodoData_addTodo', 'id');
  }

  @override
  GAddTodoData_addTodo rebuild(
          void Function(GAddTodoData_addTodoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddTodoData_addTodoBuilder toBuilder() =>
      new GAddTodoData_addTodoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddTodoData_addTodo &&
        G__typename == other.G__typename &&
        description == other.description &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAddTodoData_addTodo')
          ..add('G__typename', G__typename)
          ..add('description', description)
          ..add('id', id))
        .toString();
  }
}

class GAddTodoData_addTodoBuilder
    implements Builder<GAddTodoData_addTodo, GAddTodoData_addTodoBuilder> {
  _$GAddTodoData_addTodo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GAddTodoData_addTodoBuilder() {
    GAddTodoData_addTodo._initializeBuilder(this);
  }

  GAddTodoData_addTodoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _description = $v.description;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddTodoData_addTodo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddTodoData_addTodo;
  }

  @override
  void update(void Function(GAddTodoData_addTodoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddTodoData_addTodo build() => _build();

  _$GAddTodoData_addTodo _build() {
    final _$result = _$v ??
        new _$GAddTodoData_addTodo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GAddTodoData_addTodo', 'G__typename'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'GAddTodoData_addTodo', 'description'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GAddTodoData_addTodo', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
