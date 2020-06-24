// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'main.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MyClassTearOff {
  const _$MyClassTearOff();

  _MyClass call({String a, int b, DateTime created}) {
    return _MyClass(
      a: a,
      b: b,
      created: created,
    );
  }
}

// ignore: unused_element
const $MyClass = _$MyClassTearOff();

mixin _$MyClass {
  String get a;
  int get b;
  DateTime get created;

  $MyClassCopyWith<MyClass> get copyWith;
}

abstract class $MyClassCopyWith<$Res> {
  factory $MyClassCopyWith(MyClass value, $Res Function(MyClass) then) =
      _$MyClassCopyWithImpl<$Res>;
  $Res call({String a, int b, DateTime created});
}

class _$MyClassCopyWithImpl<$Res> implements $MyClassCopyWith<$Res> {
  _$MyClassCopyWithImpl(this._value, this._then);

  final MyClass _value;
  // ignore: unused_field
  final $Res Function(MyClass) _then;

  @override
  $Res call({
    Object a = freezed,
    Object b = freezed,
    Object created = freezed,
  }) {
    return _then(_value.copyWith(
      a: a == freezed ? _value.a : a as String,
      b: b == freezed ? _value.b : b as int,
      created: created == freezed ? _value.created : created as DateTime,
    ));
  }
}

abstract class _$MyClassCopyWith<$Res> implements $MyClassCopyWith<$Res> {
  factory _$MyClassCopyWith(_MyClass value, $Res Function(_MyClass) then) =
      __$MyClassCopyWithImpl<$Res>;
  @override
  $Res call({String a, int b, DateTime created});
}

class __$MyClassCopyWithImpl<$Res> extends _$MyClassCopyWithImpl<$Res>
    implements _$MyClassCopyWith<$Res> {
  __$MyClassCopyWithImpl(_MyClass _value, $Res Function(_MyClass) _then)
      : super(_value, (v) => _then(v as _MyClass));

  @override
  _MyClass get _value => super._value as _MyClass;

  @override
  $Res call({
    Object a = freezed,
    Object b = freezed,
    Object created = freezed,
  }) {
    return _then(_MyClass(
      a: a == freezed ? _value.a : a as String,
      b: b == freezed ? _value.b : b as int,
      created: created == freezed ? _value.created : created as DateTime,
    ));
  }
}

class _$_MyClass extends _MyClass with DiagnosticableTreeMixin {
  _$_MyClass({this.a, this.b, this.created}) : super._();

  @override
  final String a;
  @override
  final int b;
  @override
  final DateTime created;

  bool _didnow = false;
  String _now;

  @override
  String get now {
    if (_didnow == false) {
      _didnow = true;
      _now = DateTime.now().toString();
    }
    return _now;
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyClass(a: $a, b: $b, created: $created, now: $now)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyClass'))
      ..add(DiagnosticsProperty('a', a))
      ..add(DiagnosticsProperty('b', b))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('now', now));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MyClass &&
            (identical(other.a, a) ||
                const DeepCollectionEquality().equals(other.a, a)) &&
            (identical(other.b, b) ||
                const DeepCollectionEquality().equals(other.b, b)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality().equals(other.created, created)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(a) ^
      const DeepCollectionEquality().hash(b) ^
      const DeepCollectionEquality().hash(created);

  @override
  _$MyClassCopyWith<_MyClass> get copyWith =>
      __$MyClassCopyWithImpl<_MyClass>(this, _$identity);
}

abstract class _MyClass extends MyClass {
  _MyClass._() : super._();
  factory _MyClass({String a, int b, DateTime created}) = _$_MyClass;

  @override
  String get a;
  @override
  int get b;
  @override
  DateTime get created;
  @override
  _$MyClassCopyWith<_MyClass> get copyWith;
}

class _$OurClassTearOff {
  const _$OurClassTearOff();

  IntData call(int value) {
    return IntData(
      value,
    );
  }

  StringData string(String value) {
    return StringData(
      value,
    );
  }
}

// ignore: unused_element
const $OurClass = _$OurClassTearOff();

mixin _$OurClass {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(int value), {
    @required Result string(String value),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(int value), {
    Result string(String value),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(IntData value), {
    @required Result string(StringData value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(IntData value), {
    Result string(StringData value),
    @required Result orElse(),
  });
}

abstract class $OurClassCopyWith<$Res> {
  factory $OurClassCopyWith(OurClass value, $Res Function(OurClass) then) =
      _$OurClassCopyWithImpl<$Res>;
}

class _$OurClassCopyWithImpl<$Res> implements $OurClassCopyWith<$Res> {
  _$OurClassCopyWithImpl(this._value, this._then);

  final OurClass _value;
  // ignore: unused_field
  final $Res Function(OurClass) _then;
}

abstract class $IntDataCopyWith<$Res> {
  factory $IntDataCopyWith(IntData value, $Res Function(IntData) then) =
      _$IntDataCopyWithImpl<$Res>;
  $Res call({int value});
}

class _$IntDataCopyWithImpl<$Res> extends _$OurClassCopyWithImpl<$Res>
    implements $IntDataCopyWith<$Res> {
  _$IntDataCopyWithImpl(IntData _value, $Res Function(IntData) _then)
      : super(_value, (v) => _then(v as IntData));

  @override
  IntData get _value => super._value as IntData;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(IntData(
      value == freezed ? _value.value : value as int,
    ));
  }
}

class _$IntData extends IntData with DiagnosticableTreeMixin {
  const _$IntData(this.value)
      : assert(value != null),
        super._();

  @override
  final int value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OurClass(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OurClass'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IntData &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @override
  $IntDataCopyWith<IntData> get copyWith =>
      _$IntDataCopyWithImpl<IntData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(int value), {
    @required Result string(String value),
  }) {
    assert($default != null);
    assert(string != null);
    return $default(value);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(int value), {
    Result string(String value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(IntData value), {
    @required Result string(StringData value),
  }) {
    assert($default != null);
    assert(string != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(IntData value), {
    Result string(StringData value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class IntData extends OurClass {
  const IntData._() : super._();
  const factory IntData(int value) = _$IntData;

  int get value;
  $IntDataCopyWith<IntData> get copyWith;
}

abstract class $StringDataCopyWith<$Res> {
  factory $StringDataCopyWith(
          StringData value, $Res Function(StringData) then) =
      _$StringDataCopyWithImpl<$Res>;
  $Res call({String value});
}

class _$StringDataCopyWithImpl<$Res> extends _$OurClassCopyWithImpl<$Res>
    implements $StringDataCopyWith<$Res> {
  _$StringDataCopyWithImpl(StringData _value, $Res Function(StringData) _then)
      : super(_value, (v) => _then(v as StringData));

  @override
  StringData get _value => super._value as StringData;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(StringData(
      value == freezed ? _value.value : value as String,
    ));
  }
}

class _$StringData extends StringData with DiagnosticableTreeMixin {
  const _$StringData(this.value)
      : assert(value != null),
        super._();

  @override
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OurClass.string(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OurClass.string'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StringData &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @override
  $StringDataCopyWith<StringData> get copyWith =>
      _$StringDataCopyWithImpl<StringData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(int value), {
    @required Result string(String value),
  }) {
    assert($default != null);
    assert(string != null);
    return string(value);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(int value), {
    Result string(String value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (string != null) {
      return string(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(IntData value), {
    @required Result string(StringData value),
  }) {
    assert($default != null);
    assert(string != null);
    return string(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(IntData value), {
    Result string(StringData value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (string != null) {
      return string(this);
    }
    return orElse();
  }
}

abstract class StringData extends OurClass {
  const StringData._() : super._();
  const factory StringData(String value) = _$StringData;

  String get value;
  $StringDataCopyWith<StringData> get copyWith;
}

class _$DeckStateTearOff {
  const _$DeckStateTearOff();

  _DeckState call({List<CardState> cards}) {
    return _DeckState(
      cards: cards,
    );
  }
}

// ignore: unused_element
const $DeckState = _$DeckStateTearOff();

mixin _$DeckState {
  List<CardState> get cards;

  $DeckStateCopyWith<DeckState> get copyWith;
}

abstract class $DeckStateCopyWith<$Res> {
  factory $DeckStateCopyWith(DeckState value, $Res Function(DeckState) then) =
      _$DeckStateCopyWithImpl<$Res>;
  $Res call({List<CardState> cards});
}

class _$DeckStateCopyWithImpl<$Res> implements $DeckStateCopyWith<$Res> {
  _$DeckStateCopyWithImpl(this._value, this._then);

  final DeckState _value;
  // ignore: unused_field
  final $Res Function(DeckState) _then;

  @override
  $Res call({
    Object cards = freezed,
  }) {
    return _then(_value.copyWith(
      cards: cards == freezed ? _value.cards : cards as List<CardState>,
    ));
  }
}

abstract class _$DeckStateCopyWith<$Res> implements $DeckStateCopyWith<$Res> {
  factory _$DeckStateCopyWith(
          _DeckState value, $Res Function(_DeckState) then) =
      __$DeckStateCopyWithImpl<$Res>;
  @override
  $Res call({List<CardState> cards});
}

class __$DeckStateCopyWithImpl<$Res> extends _$DeckStateCopyWithImpl<$Res>
    implements _$DeckStateCopyWith<$Res> {
  __$DeckStateCopyWithImpl(_DeckState _value, $Res Function(_DeckState) _then)
      : super(_value, (v) => _then(v as _DeckState));

  @override
  _DeckState get _value => super._value as _DeckState;

  @override
  $Res call({
    Object cards = freezed,
  }) {
    return _then(_DeckState(
      cards: cards == freezed ? _value.cards : cards as List<CardState>,
    ));
  }
}

class _$_DeckState extends _DeckState with DiagnosticableTreeMixin {
  const _$_DeckState({this.cards}) : super._();

  @override
  final List<CardState> cards;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeckState(cards: $cards)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeckState'))
      ..add(DiagnosticsProperty('cards', cards));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeckState &&
            (identical(other.cards, cards) ||
                const DeepCollectionEquality().equals(other.cards, cards)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cards);

  @override
  _$DeckStateCopyWith<_DeckState> get copyWith =>
      __$DeckStateCopyWithImpl<_DeckState>(this, _$identity);
}

abstract class _DeckState extends DeckState {
  const _DeckState._() : super._();
  const factory _DeckState({List<CardState> cards}) = _$_DeckState;

  @override
  List<CardState> get cards;
  @override
  _$DeckStateCopyWith<_DeckState> get copyWith;
}

class _$CardStateTearOff {
  const _$CardStateTearOff();

  _CardState call({String name, List<ClozeState> clozes}) {
    return _CardState(
      name: name,
      clozes: clozes,
    );
  }
}

// ignore: unused_element
const $CardState = _$CardStateTearOff();

mixin _$CardState {
  String get name;
  List<ClozeState> get clozes;

  $CardStateCopyWith<CardState> get copyWith;
}

abstract class $CardStateCopyWith<$Res> {
  factory $CardStateCopyWith(CardState value, $Res Function(CardState) then) =
      _$CardStateCopyWithImpl<$Res>;
  $Res call({String name, List<ClozeState> clozes});
}

class _$CardStateCopyWithImpl<$Res> implements $CardStateCopyWith<$Res> {
  _$CardStateCopyWithImpl(this._value, this._then);

  final CardState _value;
  // ignore: unused_field
  final $Res Function(CardState) _then;

  @override
  $Res call({
    Object name = freezed,
    Object clozes = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      clozes: clozes == freezed ? _value.clozes : clozes as List<ClozeState>,
    ));
  }
}

abstract class _$CardStateCopyWith<$Res> implements $CardStateCopyWith<$Res> {
  factory _$CardStateCopyWith(
          _CardState value, $Res Function(_CardState) then) =
      __$CardStateCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<ClozeState> clozes});
}

class __$CardStateCopyWithImpl<$Res> extends _$CardStateCopyWithImpl<$Res>
    implements _$CardStateCopyWith<$Res> {
  __$CardStateCopyWithImpl(_CardState _value, $Res Function(_CardState) _then)
      : super(_value, (v) => _then(v as _CardState));

  @override
  _CardState get _value => super._value as _CardState;

  @override
  $Res call({
    Object name = freezed,
    Object clozes = freezed,
  }) {
    return _then(_CardState(
      name: name == freezed ? _value.name : name as String,
      clozes: clozes == freezed ? _value.clozes : clozes as List<ClozeState>,
    ));
  }
}

class _$_CardState extends _CardState with DiagnosticableTreeMixin {
  const _$_CardState({this.name, this.clozes}) : super._();

  @override
  final String name;
  @override
  final List<ClozeState> clozes;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CardState(name: $name, clozes: $clozes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CardState'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('clozes', clozes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CardState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.clozes, clozes) ||
                const DeepCollectionEquality().equals(other.clozes, clozes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(clozes);

  @override
  _$CardStateCopyWith<_CardState> get copyWith =>
      __$CardStateCopyWithImpl<_CardState>(this, _$identity);
}

abstract class _CardState extends CardState {
  const _CardState._() : super._();
  const factory _CardState({String name, List<ClozeState> clozes}) =
      _$_CardState;

  @override
  String get name;
  @override
  List<ClozeState> get clozes;
  @override
  _$CardStateCopyWith<_CardState> get copyWith;
}

class _$ClozeStateTearOff {
  const _$ClozeStateTearOff();

  _ClozeState call({bool responded}) {
    return _ClozeState(
      responded: responded,
    );
  }
}

// ignore: unused_element
const $ClozeState = _$ClozeStateTearOff();

mixin _$ClozeState {
  bool get responded;

  $ClozeStateCopyWith<ClozeState> get copyWith;
}

abstract class $ClozeStateCopyWith<$Res> {
  factory $ClozeStateCopyWith(
          ClozeState value, $Res Function(ClozeState) then) =
      _$ClozeStateCopyWithImpl<$Res>;
  $Res call({bool responded});
}

class _$ClozeStateCopyWithImpl<$Res> implements $ClozeStateCopyWith<$Res> {
  _$ClozeStateCopyWithImpl(this._value, this._then);

  final ClozeState _value;
  // ignore: unused_field
  final $Res Function(ClozeState) _then;

  @override
  $Res call({
    Object responded = freezed,
  }) {
    return _then(_value.copyWith(
      responded: responded == freezed ? _value.responded : responded as bool,
    ));
  }
}

abstract class _$ClozeStateCopyWith<$Res> implements $ClozeStateCopyWith<$Res> {
  factory _$ClozeStateCopyWith(
          _ClozeState value, $Res Function(_ClozeState) then) =
      __$ClozeStateCopyWithImpl<$Res>;
  @override
  $Res call({bool responded});
}

class __$ClozeStateCopyWithImpl<$Res> extends _$ClozeStateCopyWithImpl<$Res>
    implements _$ClozeStateCopyWith<$Res> {
  __$ClozeStateCopyWithImpl(
      _ClozeState _value, $Res Function(_ClozeState) _then)
      : super(_value, (v) => _then(v as _ClozeState));

  @override
  _ClozeState get _value => super._value as _ClozeState;

  @override
  $Res call({
    Object responded = freezed,
  }) {
    return _then(_ClozeState(
      responded: responded == freezed ? _value.responded : responded as bool,
    ));
  }
}

class _$_ClozeState extends _ClozeState with DiagnosticableTreeMixin {
  const _$_ClozeState({this.responded}) : super._();

  @override
  final bool responded;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClozeState(responded: $responded)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClozeState'))
      ..add(DiagnosticsProperty('responded', responded));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ClozeState &&
            (identical(other.responded, responded) ||
                const DeepCollectionEquality()
                    .equals(other.responded, responded)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(responded);

  @override
  _$ClozeStateCopyWith<_ClozeState> get copyWith =>
      __$ClozeStateCopyWithImpl<_ClozeState>(this, _$identity);
}

abstract class _ClozeState extends ClozeState {
  const _ClozeState._() : super._();
  const factory _ClozeState({bool responded}) = _$_ClozeState;

  @override
  bool get responded;
  @override
  _$ClozeStateCopyWith<_ClozeState> get copyWith;
}
