import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'investor_details_widget.dart' show InvestorDetailsWidget;
import 'package:flutter/material.dart';

class InvestorDetailsModel extends FlutterFlowModel<InvestorDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for com_sector_ratio widget.
  String? comSectorRatioValue;
  FormFieldController<String>? comSectorRatioValueController;
  // State field(s) for com_location_ratio widget.
  String? comLocationRatioValue;
  FormFieldController<String>? comLocationRatioValueController;
  // State field(s) for industry_stage widget.
  String? industryStageValue;
  FormFieldController<String>? industryStageValueController;
  // State field(s) for investment_size widget.
  String? investmentSizeValue;
  FormFieldController<String>? investmentSizeValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for full_name widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  // State field(s) for com_name widget.
  FocusNode? comNameFocusNode1;
  TextEditingController? comNameTextController1;
  String? Function(BuildContext, String?)? comNameTextController1Validator;
  // State field(s) for com_name widget.
  FocusNode? comNameFocusNode2;
  TextEditingController? comNameTextController2;
  String? Function(BuildContext, String?)? comNameTextController2Validator;
  // State field(s) for com_name widget.
  FocusNode? comNameFocusNode3;
  TextEditingController? comNameTextController3;
  String? Function(BuildContext, String?)? comNameTextController3Validator;
  // State field(s) for com_name widget.
  FocusNode? comNameFocusNode4;
  TextEditingController? comNameTextController4;
  String? Function(BuildContext, String?)? comNameTextController4Validator;
  // State field(s) for com_name widget.
  FocusNode? comNameFocusNode5;
  TextEditingController? comNameTextController5;
  String? Function(BuildContext, String?)? comNameTextController5Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();

    comNameFocusNode1?.dispose();
    comNameTextController1?.dispose();

    comNameFocusNode2?.dispose();
    comNameTextController2?.dispose();

    comNameFocusNode3?.dispose();
    comNameTextController3?.dispose();

    comNameFocusNode4?.dispose();
    comNameTextController4?.dispose();

    comNameFocusNode5?.dispose();
    comNameTextController5?.dispose();
  }
}
