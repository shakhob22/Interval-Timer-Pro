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

Future getInterval() async {
  var box = await Hive.openBox('box');
  FFAppState().intervalName = await box.get('intervalName') ?? 'Some name';
  FFAppState().items = await box.get('items') ?? [5];
  FFAppState().startTime = await box.get('startTime') ?? DateTime.now();
}
