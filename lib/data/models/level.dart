import 'package:freezed_annotation/freezed_annotation.dart';

part 'level.freezed.dart';
part 'level.g.dart';

@freezed
class Level with _$Level {
  factory Level() = _Level ;

  factory Level.fromJson(Map<String, dynamic> json) =>
      _$LevelFromJson(json);
}

