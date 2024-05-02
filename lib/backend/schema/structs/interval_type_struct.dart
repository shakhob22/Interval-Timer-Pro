// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IntervalTypeStruct extends BaseStruct {
  IntervalTypeStruct({
    String? name,
    List<int>? items,
    DateTime? startTime,
  })  : _name = name,
        _items = items,
        _startTime = startTime;

  // "name" field.
  String? _name;
  String get name => _name ?? 'MAC';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "items" field.
  List<int>? _items;
  List<int> get items => _items ?? const [];
  set items(List<int>? val) => _items = val;
  void updateItems(Function(List<int>) updateFn) => updateFn(_items ??= []);
  bool hasItems() => _items != null;

  // "start_time" field.
  DateTime? _startTime;
  DateTime get startTime =>
      _startTime ?? DateTime.fromMicrosecondsSinceEpoch(1712775600000000);
  set startTime(DateTime? val) => _startTime = val;
  bool hasStartTime() => _startTime != null;

  static IntervalTypeStruct fromMap(Map<String, dynamic> data) =>
      IntervalTypeStruct(
        name: data['name'] as String?,
        items: getDataList(data['items']),
        startTime: data['start_time'] as DateTime?,
      );

  static IntervalTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? IntervalTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'items': _items,
        'start_time': _startTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'items': serializeParam(
          _items,
          ParamType.int,
          true,
        ),
        'start_time': serializeParam(
          _startTime,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static IntervalTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      IntervalTypeStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        items: deserializeParam<int>(
          data['items'],
          ParamType.int,
          true,
        ),
        startTime: deserializeParam(
          data['start_time'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'IntervalTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is IntervalTypeStruct &&
        name == other.name &&
        listEquality.equals(items, other.items) &&
        startTime == other.startTime;
  }

  @override
  int get hashCode => const ListEquality().hash([name, items, startTime]);
}

IntervalTypeStruct createIntervalTypeStruct({
  String? name,
  DateTime? startTime,
}) =>
    IntervalTypeStruct(
      name: name,
      startTime: startTime,
    );
