import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  User._();

  factory User({
    /// 用户id
    required String id,

    /// 手机号码
    required String telephone,

    /// 姓名
    required String name,

    /// 年龄
    required int age,

    /// 头像链接(可选)
    String? headimg,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
