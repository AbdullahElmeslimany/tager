import 'dart:async';

import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class HiveHelper {
  Box? myBox;

  Future<Box> openBox(String boxName) async {
    if (!Hive.isBoxOpen(boxName)) {
      final appDir = await getApplicationDocumentsDirectory();
      Hive.init(appDir.path);
    }
    return await Hive.openBox(boxName);
  }

  Future<void> passData({required String key, required value}) async {
    await myBox!.put(key, value);
  }

  Future<Map<String, dynamic>> fetchData({required String key}) async {
    final data = await myBox!.get(key);
    return data;
  }

  Future deleteData({required String key}) async {
    await myBox!.delete(key);
  }

  Future deleteAllData() async {
    await myBox!.clear();
  }

  Future closeBox() async {
    await myBox!.close();
  }
}
