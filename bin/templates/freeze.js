let param = process.argv[2];

/// 首字母大写
function getClassName(name) {
  let words = name.split('_');
  return words.map((e) => e.charAt(0).toUpperCase() + e.slice(1)).join('');
}

function replaceTemplate(name) {
  let cls = getClassName(name);
  return `
import 'package:freezed_annotation/freezed_annotation.dart';

part '${name}.freezed.dart';
part '${name}.g.dart';

@freezed
class ${cls} with _$${cls} {
  factory ${cls}() = _${cls} ;

  factory ${cls}.fromJson(Map<String, dynamic> json) =>
      _$${cls}FromJson(json);
}

`;
}

const fs = require('fs/promises');

async function createFileWithContent(file, content) {
  const data = new Uint8Array(Buffer.from(content));
  await fs.writeFile(file, data);
}

try {
  let content = replaceTemplate(param);
  let file = `./lib/app/data/models/${param}.dart`;
  createFileWithContent(file, content);
  console.log('创建文件成功: ' + file);
} catch (e) {
  console.log('生成model错误: ' + e);
}
