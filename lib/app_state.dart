import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<int> _items = [5];
  List<int> get items => _items;
  set items(List<int> value) {
    _items = value;
  }

  void addToItems(int value) {
    _items.add(value);
  }

  void removeFromItems(int value) {
    _items.remove(value);
  }

  void removeAtIndexFromItems(int index) {
    _items.removeAt(index);
  }

  void updateItemsAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    _items[index] = updateFn(_items[index]);
  }

  void insertAtIndexInItems(int index, int value) {
    _items.insert(index, value);
  }

  String _intervalName = '';
  String get intervalName => _intervalName;
  set intervalName(String value) {
    _intervalName = value;
  }

  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  set startTime(DateTime? value) {
    _startTime = value;
  }
}
