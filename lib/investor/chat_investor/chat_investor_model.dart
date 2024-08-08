import '/flutter_flow/flutter_flow_util.dart';
import 'chat_investor_widget.dart' show ChatInvestorWidget;
import 'package:flutter/material.dart';

class ChatInvestorModel extends FlutterFlowModel<ChatInvestorWidget> {
  ///  State fields for stateful widgets in this page.

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
