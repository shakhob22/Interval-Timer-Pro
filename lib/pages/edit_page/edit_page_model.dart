import '/flutter_flow/flutter_flow_util.dart';
import 'edit_page_widget.dart' show EditPageWidget;
import 'package:flutter/material.dart';

class EditPageModel extends FlutterFlowModel<EditPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
