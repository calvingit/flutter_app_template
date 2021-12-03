import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

/// Key-Value存储，选用腾讯的mmkv作为底层实现
class StorageService extends GetxService {
  static StorageService get to => Get.find();
  GetStorage box = GetStorage();
  Future<StorageService> init() async {
    return StorageService();
  }

  /// 写入字符串数据
  Future<void> write(String key, dynamic value) async {
    await box.write(key, value);
  }

  /// 读取字符串数据
  T read<T>(String key) {
    return box.read(key);
  }

  /// 删除数据
  Future<void> remove(String key) async {
    await box.remove(key);
  }

  /// 清空所有数据
  Future<void> cleanup() async {
    await box.erase();
  }
}
