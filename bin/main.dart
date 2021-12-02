import 'dart:io';
import './templates/index.dart';

const lineNumber = 'line-number';

void main(List<String> arguments) async {
  parse(arguments);
}

void parse(List<String> arguments) {
  if (arguments.length < 2) {
    help();
    return;
  }

  switch (arguments[0]) {
    case '-x':
      final parent = arguments.length > 2 ? arguments[2] : null;
      createModule(arguments[1], parent);
      break;
    case '-m':
      createModel(arguments[1]);
      break;
    default:
      help();
  }
}

void help() {
  stdout.writeln('''
  Usage: dart run main.dart <command> [arguments]
  
  Available commands:
  -x   Create a module with binding, page, controller, repository files.
  -m   Create freezed model
  ''');
}

/// 创建模块
void createModule(String moduleName, String? parentModule) {
  stdout.writeln('Prepare creating module: $moduleName' +
      (parentModule == null ? '' : ' in $parentModule'));
  final directory =
      Directory('../lib/modules/' + (parentModule ?? '') + '/$moduleName');

  // 创建目录
  directory.createSync(recursive: true);

  // 转成类名
  final className = moduleName.split('_').map((e) => e.toCapitalized()).join();

  // binding文件
  File file = File(directory.path + '/${moduleName}_binding.dart');
  String content = bindingContent(moduleName, className);
  file.writeAsStringSync(content, flush: true);

  // controller文件
  file = File(directory.path + '/${moduleName}_controller.dart');
  content = controllerContent(moduleName, className);
  file.writeAsStringSync(content, flush: true);

  // page文件
  file = File(directory.path + '/${moduleName}_page.dart');
  content = pageContent(moduleName, className);
  file.writeAsStringSync(content, flush: true);

  // repository文件
  file = File(directory.path + '/${moduleName}_repository.dart');
  content = repositoryContent(className);
  file.writeAsStringSync(content, flush: true);

  // 询问是否需要添加路由
  stdout.writeln('Do you want to add route? (Y/n)');
  final n = stdin.readLineSync() == 'n';
  if (n) {
    return;
  }

  createRoute(moduleName, parentModule, className);
}

/// 创建路由
void createRoute(String moduleName, String? parentModule, String className) {
  final path = '/modules/' + (parentModule ?? '') + '/$moduleName';

  /// import 部分
  final imports = "import '$path/${moduleName}_binding.dart';\n"
      "import '$path/${moduleName}_page.dart';";

  File appPages = File('../lib/routes/app_pages.dart');
  List<String> lines = appPages.readAsLinesSync();
  // 找到最后一个import
  int index = lines.lastIndexWhere((element) => element.contains('import'));
  lines.insert(index + 1, imports);

  // pages部分

  final page = "    GetPage(\n"
      "      name: Routes.${className.toCamelCased()},\n"
      "      page: () => ${className}Page(),\n"
      "      binding: ${className}Binding(),\n"
      "    ),";

  index = lines.lastIndexWhere((element) => element.contains('];'));
  lines.insert(index, page);

  // 写入文件app_pages.dart
  appPages.writeAsStringSync(lines.join('\n'));

  // routes部分
  File appRoutes = File('../lib/routes/app_routes.dart');
  lines = appRoutes.readAsLinesSync();
  index = lines.lastIndexWhere((element) => element.contains('}'));
  final content =
      "  static const ${className.toCamelCased()} = '/$moduleName';";
  lines.insert(index, content);
  appRoutes.writeAsStringSync(lines.join('\n'));
  stdout.writeln('Done');
}

void createModel(String modelName) {
  stdout.writeln('Prepare creating freezed model: $modelName');

  File file = File('../lib/data/models/$modelName.dart');
  final content = modelContent(modelName, modelName.toCapitalized());
  file.writeAsStringSync(content);
  stdout.writeln('Done');
}

extension CapitalizedString on String {
  // 转成首字母大写
  String toCapitalized() {
    final first = this[0].toUpperCase();
    final other = substring(1).toLowerCase();
    return first + other;
  }

  // 转成首字母小写
  String toCamelCased() {
    return replaceRange(0, 1, this[0].toLowerCase());
  }
}
