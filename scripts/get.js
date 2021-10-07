let param = process.argv[2];
console.log('module:' + param);
const fs = require('fs/promises');

const pagesRootPath = './lib/pages/';
let pagePath = pagesRootPath + param;
let className = getClassName(param); // 类名

/// 首字母大写
function getClassName(name) {
  let words = name.split('_');
  return words.map((e) => e.charAt(0).toUpperCase() + e.slice(1)).join('');
}

async function createFileWithContent(file, content) {
  const data = new Uint8Array(Buffer.from(content));
  await fs.writeFile(file, data);
}

class NewFile {
  get path() {
    return '';
  }

  get content() {
    return '';
  }
}

/// binding文件
class BindingFile extends NewFile {
  path() {
    return pagePath + `/${param}_binding.dart`;
  }

  content() {
    return `import 'package:get/get.dart';
    import 'controller.dart';
    
    class ${className}Binding extends Bindings {
      @override
      void dependencies() {
        Get.lazyPut<${className}Controller>(
          () => ${className}Controller(),
        );
      }
    }
      `;
  }
}

/// page文件
class PageFile extends NewFile {
  path() {
    return pagePath + `/${param}_page.dart`;
  }

  content() {
    return `import 'package:flutter/material.dart';
    import 'package:get/get.dart';
    import 'controller.dart';
    
    class ${className}Page extends GetView<${className}Controller> {
      const ${className}Page({Key? key}) : super(key: key);
      
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('${className}'),
          ),
          body: Center(
            child: Text(
              '${className}Page is working',
              style: const TextStyle(fontSize: 20),
            ),
          ),
        );
      }
    }
      `;
  }
}

/// controller文件
class ControllerFile extends NewFile {
  path() {
    return pagePath + `/${param}_controller.dart`;
  }

  content() {
    return `import 'package:get/get.dart';

class ${className}Controller extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  // It is the perfect place to enter navigation events, like snackbar,
  // dialogs, or a new route, or async request.
  void onReady() {
    super.onReady();
  }
  
  @override
  // be used to dispose resources used by the controller
  void onClose() {
    //
  }
}
  `;
  }
}

/// repository文件
class RepositoryFile extends NewFile {
  path() {
    return pagePath + `/${param}_repository.dart`;
  }

  content() {
    return `import '/data/api/api_provider.dart';
import '/services/storage.dart';

class ${className}Repository {
  final ApiProvider api;
  final StorageService storage;
  ${className}Repository(this.api, this.storage);
}
    `;
  }
}

/// provider 文件
class ProviderFile extends NewFile {
  path() {
    return pagePath + `/${param}_provider.dart`;
  }

  content() {
    return `import '/data/api/api_provider.dart';
import '/services/storage.dart';

class ${className}Repository {
  final ApiProvider api;
  final StorageService storage;
  ${className}Repository(this.api, this.storage);
}
    `;
  }
}

const routesPath = './lib/routes/';
async function writeAppPages() {
  let filePath = routesPath + 'app_pages.dart';
  const data = await fs.readFile(filePath, 'UTF-8');
  // 已经包含了就不处理了
  if (data.includes(className)) {
    return;
  }
  // 分割换行符
  let dataLines = data.split(/\r?\n/);

  let index = dataLines.findIndex((e) => {
    return e.includes('app_routes.dart');
  });

  /// import 部分
  const importBinding = `import 'package:serve_u/app/modules/${param}/binding.dart';`;
  const importPage = `import 'package:serve_u/app/modules/${param}/page.dart';`;
  dataLines.splice(index - 1, 0, importBinding, importPage);

  // getPage 部分
  index = dataLines.findIndex((e) => {
    return e.includes('];');
  });

  const pageLines = [
    '    GetPage(',
    `      name: Routes.${param.toUpperCase()},`,
    `      page: () => ${className}Page(),`,
    `      binding: ${className}Binding(),`,
    '    ),',
  ];

  dataLines.splice(index, 0, pageLines[0], pageLines[1], pageLines[2], pageLines[3], pageLines[4]);

  const content = dataLines.join('\n');

  await createFileWithContent(filePath, content);
}

async function writeAppRoutes() {
  let filePath = routesPath + 'app_routes.dart';
  const data = await fs.readFile(filePath, 'UTF-8');
  // 已经包含了就不处理了
  if (data.includes(param.toUpperCase())) {
    return;
  }
  // 分割换行符
  let dataLines = data.split(/\r?\n/);

  let index = dataLines.findIndex((e) => {
    return e.includes('}');
  });

  /// import 部分
  const str = `  static const ${param.toUpperCase()} = '/${param.toLowerCase()}';`;
  dataLines.splice(index, 0, str);
  const content = dataLines.join('\n');
  await createFileWithContent(filePath, content);
}

/// 执行部分
(async function () {
  try {
    console.log('创建目录: ' + pagePath);
    await fs.mkdir(pagePath, { recursive: true }); // 创建目录
    console.log('创建文件: binding.dart');
    await createFileWithContent(pagePath + '/binding.dart', createBindingContent(className));
    console.log('创建文件: controller.dart');
    await createFileWithContent(pagePath + '/controller.dart', createControllerContent(className));
    console.log('创建文件: page.dart');
    await createFileWithContent(pagePath + '/page.dart', createPageContent(className));
    console.log('创建: Routes');
    await writeAppRoutes();
    console.log('创建: Pages');
    await writeAppPages();
  } catch (error) {
    console.error('有一个错误：', error.message);
  }
})();
