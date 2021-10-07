import 'package:get/get.dart';
import 'package:mmkv/mmkv.dart';

/// Key-Value存储，选用腾讯的mmkv作为底层实现
class StorageService extends GetxService {
  static StorageService get to => Get.find();
  late MMKV _mmkv;
  Future<StorageService> init() async {
    await MMKV.initialize();
    _mmkv = MMKV.defaultMMKV();
    return StorageService();
  }

  /// 写入字符串数据
  void write<T>(String key, T value) {
    if (T is bool) {
      _mmkv.encodeBool(key, value as bool);
    } else if (T is int) {
      _mmkv.encodeInt(key, value as int);
    } else if (T is String) {
      _mmkv.encodeString(key, value as String);
    } else if (value == null) {
      remove(key);
    } else {
      AssertionError('Not supported');
    }
  }

  /// 读取字符串数据
  T? read<T>(String key) {
    if (T is bool) {
      _mmkv.decodeBool(key);
    } else if (T is int) {
      _mmkv.decodeInt(key);
    } else if (T is String) {
      _mmkv.decodeString(key);
    } else {
      throw Exception('Not supported');
    }
  }

  /// 删除数据
  void remove(String key) {
    _mmkv.removeValue(key);
  }

  /// 清空所有数据
  void cleanup() {
    _mmkv.clearAll();
  }
}
