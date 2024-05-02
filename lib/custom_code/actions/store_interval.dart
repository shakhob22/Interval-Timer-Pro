// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:hive_flutter/hive_flutter.dart';

Future<void> storeInterval(
  String? intervalName,
  List<int>? items,
  DateTime? startTime,
) async {
  var box = await Hive.openBox('box');
  await box.put('intervalName', intervalName);
  await box.put('items', items);
  await box.put('startTime', startTime);
}
