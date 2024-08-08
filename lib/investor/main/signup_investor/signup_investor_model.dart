import '/flutter_flow/flutter_flow_util.dart';
import 'signup_investor_widget.dart' show SignupInvestorWidget;
import 'package:flutter/material.dart';

class SignupInvestorModel extends FlutterFlowModel<SignupInvestorWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for i_Full_name widget.
  FocusNode? iFullNameFocusNode;
  TextEditingController? iFullNameTextController;
  String? Function(BuildContext, String?)? iFullNameTextControllerValidator;
  // State field(s) for i_email widget.
  FocusNode? iEmailFocusNode;
  TextEditingController? iEmailTextController;
  String? Function(BuildContext, String?)? iEmailTextControllerValidator;
  // State field(s) for i_phone widget.
  FocusNode? iPhoneFocusNode;
  TextEditingController? iPhoneTextController;
  String? Function(BuildContext, String?)? iPhoneTextControllerValidator;
  // State field(s) for i_password widget.
  FocusNode? iPasswordFocusNode;
  TextEditingController? iPasswordTextController;
  late bool iPasswordVisibility;
  String? Function(BuildContext, String?)? iPasswordTextControllerValidator;
  // State field(s) for i_cpassword widget.
  FocusNode? iCpasswordFocusNode;
  TextEditingController? iCpasswordTextController;
  late bool iCpasswordVisibility;
  String? Function(BuildContext, String?)? iCpasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    iPasswordVisibility = false;
    iCpasswordVisibility = false;
  }

  @override
  void dispose() {
    iFullNameFocusNode?.dispose();
    iFullNameTextController?.dispose();

    iEmailFocusNode?.dispose();
    iEmailTextController?.dispose();

    iPhoneFocusNode?.dispose();
    iPhoneTextController?.dispose();

    iPasswordFocusNode?.dispose();
    iPasswordTextController?.dispose();

    iCpasswordFocusNode?.dispose();
    iCpasswordTextController?.dispose();
  }
}
