import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_investor_widget.dart' show SearchInvestorWidget;
import 'package:flutter/material.dart';

class SearchInvestorModel extends FlutterFlowModel<SearchInvestorWidget> {
  ///  Local state fields for this page.

  bool searchactive = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<Users1Record> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
