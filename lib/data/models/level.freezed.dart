// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'level.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Level _$LevelFromJson(Map<String, dynamic> json) {
  return _Level.fromJson(json);
}

/// @nodoc
class _$LevelTearOff {
  const _$LevelTearOff();

  _Level call() {
    return _Level();
  }

  Level fromJson(Map<String, Object?> json) {
    return Level.fromJson(json);
  }
}

/// @nodoc
const $Level = _$LevelTearOff();

/// @nodoc
mixin _$Level {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LevelCopyWith<$Res> {
  factory $LevelCopyWith(Level value, $Res Function(Level) then) =
      _$LevelCopyWithImpl<$Res>;
}

/// @nodoc
class _$LevelCopyWithImpl<$Res> implements $LevelCopyWith<$Res> {
  _$LevelCopyWithImpl(this._value, this._then);

  final Level _value;
  // ignore: unused_field
  final $Res Function(Level) _then;
}

/// @nodoc
abstract class _$LevelCopyWith<$Res> {
  factory _$LevelCopyWith(_Level value, $Res Function(_Level) then) =
      __$LevelCopyWithImpl<$Res>;
}

/// @nodoc
class __$LevelCopyWithImpl<$Res> extends _$LevelCopyWithImpl<$Res>
    implements _$LevelCopyWith<$Res> {
  __$LevelCopyWithImpl(_Level _value, $Res Function(_Level) _then)
      : super(_value, (v) => _then(v as _Level));

  @override
  _Level get _value => super._value as _Level;
}

/// @nodoc
@JsonSerializable()
class _$_Level implements _Level {
  _$_Level();

  factory _$_Level.fromJson(Map<String, dynamic> json) =>
      _$$_LevelFromJson(json);

  @override
  String toString() {
    return 'Level()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Level);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_LevelToJson(this);
  }
}

abstract class _Level implements Level {
  factory _Level() = _$_Level;

  factory _Level.fromJson(Map<String, dynamic> json) = _$_Level.fromJson;
}
