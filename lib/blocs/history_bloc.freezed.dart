// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HistoryEventTearOff {
  const _$HistoryEventTearOff();

  _AddRecord addRecord(String name, Uint8List imageData) {
    return _AddRecord(
      name,
      imageData,
    );
  }

  _DeleteRecord deleteRecord(int key) {
    return _DeleteRecord(
      key,
    );
  }

  _SaveToGallery saveToGallery() {
    return const _SaveToGallery();
  }
}

/// @nodoc
const $HistoryEvent = _$HistoryEventTearOff();

/// @nodoc
mixin _$HistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, Uint8List imageData) addRecord,
    required TResult Function(int key) deleteRecord,
    required TResult Function() saveToGallery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, Uint8List imageData)? addRecord,
    TResult Function(int key)? deleteRecord,
    TResult Function()? saveToGallery,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddRecord value) addRecord,
    required TResult Function(_DeleteRecord value) deleteRecord,
    required TResult Function(_SaveToGallery value) saveToGallery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddRecord value)? addRecord,
    TResult Function(_DeleteRecord value)? deleteRecord,
    TResult Function(_SaveToGallery value)? saveToGallery,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryEventCopyWith<$Res> {
  factory $HistoryEventCopyWith(
          HistoryEvent value, $Res Function(HistoryEvent) then) =
      _$HistoryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HistoryEventCopyWithImpl<$Res> implements $HistoryEventCopyWith<$Res> {
  _$HistoryEventCopyWithImpl(this._value, this._then);

  final HistoryEvent _value;
  // ignore: unused_field
  final $Res Function(HistoryEvent) _then;
}

/// @nodoc
abstract class _$AddRecordCopyWith<$Res> {
  factory _$AddRecordCopyWith(
          _AddRecord value, $Res Function(_AddRecord) then) =
      __$AddRecordCopyWithImpl<$Res>;
  $Res call({String name, Uint8List imageData});
}

/// @nodoc
class __$AddRecordCopyWithImpl<$Res> extends _$HistoryEventCopyWithImpl<$Res>
    implements _$AddRecordCopyWith<$Res> {
  __$AddRecordCopyWithImpl(_AddRecord _value, $Res Function(_AddRecord) _then)
      : super(_value, (v) => _then(v as _AddRecord));

  @override
  _AddRecord get _value => super._value as _AddRecord;

  @override
  $Res call({
    Object? name = freezed,
    Object? imageData = freezed,
  }) {
    return _then(_AddRecord(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageData == freezed
          ? _value.imageData
          : imageData // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc
class _$_AddRecord with DiagnosticableTreeMixin implements _AddRecord {
  const _$_AddRecord(this.name, this.imageData);

  @override
  final String name;
  @override
  final Uint8List imageData;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HistoryEvent.addRecord(name: $name, imageData: $imageData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HistoryEvent.addRecord'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('imageData', imageData));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddRecord &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageData, imageData) ||
                const DeepCollectionEquality()
                    .equals(other.imageData, imageData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageData);

  @JsonKey(ignore: true)
  @override
  _$AddRecordCopyWith<_AddRecord> get copyWith =>
      __$AddRecordCopyWithImpl<_AddRecord>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, Uint8List imageData) addRecord,
    required TResult Function(int key) deleteRecord,
    required TResult Function() saveToGallery,
  }) {
    return addRecord(name, imageData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, Uint8List imageData)? addRecord,
    TResult Function(int key)? deleteRecord,
    TResult Function()? saveToGallery,
    required TResult orElse(),
  }) {
    if (addRecord != null) {
      return addRecord(name, imageData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddRecord value) addRecord,
    required TResult Function(_DeleteRecord value) deleteRecord,
    required TResult Function(_SaveToGallery value) saveToGallery,
  }) {
    return addRecord(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddRecord value)? addRecord,
    TResult Function(_DeleteRecord value)? deleteRecord,
    TResult Function(_SaveToGallery value)? saveToGallery,
    required TResult orElse(),
  }) {
    if (addRecord != null) {
      return addRecord(this);
    }
    return orElse();
  }
}

abstract class _AddRecord implements HistoryEvent {
  const factory _AddRecord(String name, Uint8List imageData) = _$_AddRecord;

  String get name => throw _privateConstructorUsedError;
  Uint8List get imageData => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddRecordCopyWith<_AddRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteRecordCopyWith<$Res> {
  factory _$DeleteRecordCopyWith(
          _DeleteRecord value, $Res Function(_DeleteRecord) then) =
      __$DeleteRecordCopyWithImpl<$Res>;
  $Res call({int key});
}

/// @nodoc
class __$DeleteRecordCopyWithImpl<$Res> extends _$HistoryEventCopyWithImpl<$Res>
    implements _$DeleteRecordCopyWith<$Res> {
  __$DeleteRecordCopyWithImpl(
      _DeleteRecord _value, $Res Function(_DeleteRecord) _then)
      : super(_value, (v) => _then(v as _DeleteRecord));

  @override
  _DeleteRecord get _value => super._value as _DeleteRecord;

  @override
  $Res call({
    Object? key = freezed,
  }) {
    return _then(_DeleteRecord(
      key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$_DeleteRecord with DiagnosticableTreeMixin implements _DeleteRecord {
  const _$_DeleteRecord(this.key);

  @override
  final int key;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HistoryEvent.deleteRecord(key: $key)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HistoryEvent.deleteRecord'))
      ..add(DiagnosticsProperty('key', key));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteRecord &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(key);

  @JsonKey(ignore: true)
  @override
  _$DeleteRecordCopyWith<_DeleteRecord> get copyWith =>
      __$DeleteRecordCopyWithImpl<_DeleteRecord>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, Uint8List imageData) addRecord,
    required TResult Function(int key) deleteRecord,
    required TResult Function() saveToGallery,
  }) {
    return deleteRecord(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, Uint8List imageData)? addRecord,
    TResult Function(int key)? deleteRecord,
    TResult Function()? saveToGallery,
    required TResult orElse(),
  }) {
    if (deleteRecord != null) {
      return deleteRecord(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddRecord value) addRecord,
    required TResult Function(_DeleteRecord value) deleteRecord,
    required TResult Function(_SaveToGallery value) saveToGallery,
  }) {
    return deleteRecord(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddRecord value)? addRecord,
    TResult Function(_DeleteRecord value)? deleteRecord,
    TResult Function(_SaveToGallery value)? saveToGallery,
    required TResult orElse(),
  }) {
    if (deleteRecord != null) {
      return deleteRecord(this);
    }
    return orElse();
  }
}

abstract class _DeleteRecord implements HistoryEvent {
  const factory _DeleteRecord(int key) = _$_DeleteRecord;

  int get key => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteRecordCopyWith<_DeleteRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SaveToGalleryCopyWith<$Res> {
  factory _$SaveToGalleryCopyWith(
          _SaveToGallery value, $Res Function(_SaveToGallery) then) =
      __$SaveToGalleryCopyWithImpl<$Res>;
}

/// @nodoc
class __$SaveToGalleryCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res>
    implements _$SaveToGalleryCopyWith<$Res> {
  __$SaveToGalleryCopyWithImpl(
      _SaveToGallery _value, $Res Function(_SaveToGallery) _then)
      : super(_value, (v) => _then(v as _SaveToGallery));

  @override
  _SaveToGallery get _value => super._value as _SaveToGallery;
}

/// @nodoc
class _$_SaveToGallery with DiagnosticableTreeMixin implements _SaveToGallery {
  const _$_SaveToGallery();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HistoryEvent.saveToGallery()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HistoryEvent.saveToGallery'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SaveToGallery);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, Uint8List imageData) addRecord,
    required TResult Function(int key) deleteRecord,
    required TResult Function() saveToGallery,
  }) {
    return saveToGallery();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, Uint8List imageData)? addRecord,
    TResult Function(int key)? deleteRecord,
    TResult Function()? saveToGallery,
    required TResult orElse(),
  }) {
    if (saveToGallery != null) {
      return saveToGallery();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddRecord value) addRecord,
    required TResult Function(_DeleteRecord value) deleteRecord,
    required TResult Function(_SaveToGallery value) saveToGallery,
  }) {
    return saveToGallery(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddRecord value)? addRecord,
    TResult Function(_DeleteRecord value)? deleteRecord,
    TResult Function(_SaveToGallery value)? saveToGallery,
    required TResult orElse(),
  }) {
    if (saveToGallery != null) {
      return saveToGallery(this);
    }
    return orElse();
  }
}

abstract class _SaveToGallery implements HistoryEvent {
  const factory _SaveToGallery() = _$_SaveToGallery;
}

/// @nodoc
class _$HistoryStateTearOff {
  const _$HistoryStateTearOff();

  _Initial initial([List<HistoryItem> records = const [], int nextKey = 0]) {
    return _Initial(
      records,
      nextKey,
    );
  }
}

/// @nodoc
const $HistoryState = _$HistoryStateTearOff();

/// @nodoc
mixin _$HistoryState {
  List<HistoryItem> get records => throw _privateConstructorUsedError;
  int get nextKey => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<HistoryItem> records, int nextKey) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<HistoryItem> records, int nextKey)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryStateCopyWith<HistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res>;
  $Res call({List<HistoryItem> records, int nextKey});
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res> implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  final HistoryState _value;
  // ignore: unused_field
  final $Res Function(HistoryState) _then;

  @override
  $Res call({
    Object? records = freezed,
    Object? nextKey = freezed,
  }) {
    return _then(_value.copyWith(
      records: records == freezed
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<HistoryItem>,
      nextKey: nextKey == freezed
          ? _value.nextKey
          : nextKey // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $HistoryStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({List<HistoryItem> records, int nextKey});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$HistoryStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? records = freezed,
    Object? nextKey = freezed,
  }) {
    return _then(_Initial(
      records == freezed
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<HistoryItem>,
      nextKey == freezed
          ? _value.nextKey
          : nextKey // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial([this.records = const [], this.nextKey = 0]);

  @JsonKey(defaultValue: const [])
  @override
  final List<HistoryItem> records;
  @JsonKey(defaultValue: 0)
  @override
  final int nextKey;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HistoryState.initial(records: $records, nextKey: $nextKey)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HistoryState.initial'))
      ..add(DiagnosticsProperty('records', records))
      ..add(DiagnosticsProperty('nextKey', nextKey));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.records, records) ||
                const DeepCollectionEquality()
                    .equals(other.records, records)) &&
            (identical(other.nextKey, nextKey) ||
                const DeepCollectionEquality().equals(other.nextKey, nextKey)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(records) ^
      const DeepCollectionEquality().hash(nextKey);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<HistoryItem> records, int nextKey) initial,
  }) {
    return initial(records, nextKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<HistoryItem> records, int nextKey)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(records, nextKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HistoryState {
  const factory _Initial([List<HistoryItem> records, int nextKey]) = _$_Initial;

  @override
  List<HistoryItem> get records => throw _privateConstructorUsedError;
  @override
  int get nextKey => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
