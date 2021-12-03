import 'package:freezed_annotation/freezed_annotation.dart';

part 'area.freezed.dart';
part 'area.g.dart';

@freezed
class Area with _$Area {
  factory Area() = _Area ;

  factory Area.fromJson(Map<String, dynamic> json) =>
      _$AreaFromJson(json);
}

