import '/flutter_flow/flutter_flow_util.dart';
import 'minute_dialog_widget.dart' show MinuteDialogWidget;
import 'package:flutter/material.dart';

class MinuteDialogModel extends FlutterFlowModel<MinuteDialogWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
