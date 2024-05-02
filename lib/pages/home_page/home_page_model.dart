import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  DateTime? datePicked;
  // State field(s) for IntervalName widget.
  FocusNode? intervalNameFocusNode;
  TextEditingController? intervalNameTextController;
  String? Function(BuildContext, String?)? intervalNameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    intervalNameFocusNode?.dispose();
    intervalNameTextController?.dispose();
  }
}
