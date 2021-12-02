// ignore_for_file: unnecessary_brace_in_string_interps

String modelContent(String name, String cls) {
  return '''import 'package:freezed_annotation/freezed_annotation.dart';

part '$name.freezed.dart';
part '$name.g.dart';

@freezed
class $cls with _\$${cls} {
  factory ${cls}() = _${cls} ;

  factory $cls.fromJson(Map<String, dynamic> json) =>
      _\$${cls}FromJson(json);
}

''';
}
