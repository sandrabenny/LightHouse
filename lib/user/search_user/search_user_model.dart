import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_user_widget.dart' show SearchUserWidget;
import 'package:flutter/material.dart';

class SearchUserModel extends FlutterFlowModel<SearchUserWidget> {
  ///  Local state fields for this page.

  bool searchactive = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<InvestorsRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
