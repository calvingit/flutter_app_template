// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      telephone: json['telephone'] as String,
      name: json['name'] as String,
      age: json['age'] as int,
      headimg: json['headimg'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'telephone': instance.telephone,
      'name': instance.name,
      'age': instance.age,
      'headimg': instance.headimg,
    };
