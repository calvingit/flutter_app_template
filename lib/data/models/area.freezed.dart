// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'area.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Area _$AreaFromJson(Map<String, dynamic> json) {
  return _Area.fromJson(json);
}

/// @nodoc
class _$AreaTearOff {
  const _$AreaTearOff();

  _Area call() {
    return _Area();
  }

  Area fromJson(Map<String, Object?> json) {
    return Area.fromJson(json);
  }
}

/// @nodoc
const $Area = _$AreaTearOff();

/// @nodoc
mixin _$Area {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaCopyWith<$Res> {
  factory $AreaCopyWith(Area value, $Res Function(Area) then) =
      _$AreaCopyWithImpl<$Res>;
}

/// @nodoc
class _$AreaCopyWithImpl<$Res> implements $AreaCopyWith<$Res> {
  _$AreaCopyWithImpl(this._value, this._then);

  final Area _value;
  // ignore: unused_field
  final $Res Function(Area) _then;
}

/// @nodoc
abstract class _$AreaCopyWith<$Res> {
  factory _$AreaCopyWith(_Area value, $Res Function(_Area) then) =
      __$AreaCopyWithImpl<$Res>;
}

/// @nodoc
class __$AreaCopyWithImpl<$Res> extends _$AreaCopyWithImpl<$Res>
    implements _$AreaCopyWith<$Res> {
  __$AreaCopyWithImpl(_Area _value, $Res Function(_Area) _then)
      : super(_value, (v) => _then(v as _Area));

  @override
  _Area get _value => super._value as _Area;
}

/// @nodoc
@JsonSerializable()
class _$_Area implements _Area {
  _$_Area();

  factory _$_Area.fromJson(Map<String, dynamic> json) => _$$_AreaFromJson(json);

  @override
  String toString() {
    return 'Area()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Area);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_AreaToJson(this);
  }
}

abstract class _Area implements Area {
  factory _Area() = _$_Area;

  factory _Area.fromJson(Map<String, dynamic> json) = _$_Area.fromJson;
}
