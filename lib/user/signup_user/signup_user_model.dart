import '/flutter_flow/flutter_flow_util.dart';
import 'signup_user_widget.dart' show SignupUserWidget;
import 'package:flutter/material.dart';

class SignupUserModel extends FlutterFlowModel<SignupUserWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for U_Full_name widget.
  FocusNode? uFullNameFocusNode;
  TextEditingController? uFullNameTextController;
  String? Function(BuildContext, String?)? uFullNameTextControllerValidator;
  // State field(s) for U_email widget.
  FocusNode? uEmailFocusNode;
  TextEditingController? uEmailTextController;
  String? Function(BuildContext, String?)? uEmailTextControllerValidator;
  // State field(s) for U_phone widget.
  FocusNode? uPhoneFocusNode;
  TextEditingController? uPhoneTextController;
  String? Function(BuildContext, String?)? uPhoneTextControllerValidator;
  // State field(s) for u_password widget.
  FocusNode? uPasswordFocusNode;
  TextEditingController? uPasswordTextController;
  late bool uPasswordVisibility;
  String? Function(BuildContext, String?)? uPasswordTextControllerValidator;
  // State field(s) for U_cpassword widget.
  FocusNode? uCpasswordFocusNode;
  TextEditingController? uCpasswordTextController;
  late bool uCpasswordVisibility;
  String? Function(BuildContext, String?)? uCpasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    uPasswordVisibility = false;
    uCpasswordVisibility = false;
  }

  @override
  void dispose() {
    uFullNameFocusNode?.dispose();
    uFullNameTextController?.dispose();

    uEmailFocusNode?.dispose();
    uEmailTextController?.dispose();

    uPhoneFocusNode?.dispose();
    uPhoneTextController?.dispose();

    uPasswordFocusNode?.dispose();
    uPasswordTextController?.dispose();

    uCpasswordFocusNode?.dispose();
    uCpasswordTextController?.dispose();
  }
}
