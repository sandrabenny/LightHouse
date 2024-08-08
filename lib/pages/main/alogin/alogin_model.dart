import '/flutter_flow/flutter_flow_util.dart';
import 'alogin_widget.dart' show AloginWidget;
import 'package:flutter/material.dart';

class AloginModel extends FlutterFlowModel<AloginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for u_emailAddress widget.
  FocusNode? uEmailAddressFocusNode;
  TextEditingController? uEmailAddressTextController;
  String? Function(BuildContext, String?)? uEmailAddressTextControllerValidator;
  // State field(s) for u_password widget.
  FocusNode? uPasswordFocusNode;
  TextEditingController? uPasswordTextController;
  late bool uPasswordVisibility;
  String? Function(BuildContext, String?)? uPasswordTextControllerValidator;
  // State field(s) for i_emailAddress widget.
  FocusNode? iEmailAddressFocusNode;
  TextEditingController? iEmailAddressTextController;
  String? Function(BuildContext, String?)? iEmailAddressTextControllerValidator;
  // State field(s) for i_password widget.
  FocusNode? iPasswordFocusNode;
  TextEditingController? iPasswordTextController;
  late bool iPasswordVisibility;
  String? Function(BuildContext, String?)? iPasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    uPasswordVisibility = false;
    iPasswordVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    uEmailAddressFocusNode?.dispose();
    uEmailAddressTextController?.dispose();

    uPasswordFocusNode?.dispose();
    uPasswordTextController?.dispose();

    iEmailAddressFocusNode?.dispose();
    iEmailAddressTextController?.dispose();

    iPasswordFocusNode?.dispose();
    iPasswordTextController?.dispose();
  }
}
