import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_company_details_widget.dart' show EditCompanyDetailsWidget;
import 'package:flutter/material.dart';

class EditCompanyDetailsModel
    extends FlutterFlowModel<EditCompanyDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for com_name widget.
  FocusNode? comNameFocusNode;
  TextEditingController? comNameTextController;
  String? Function(BuildContext, String?)? comNameTextControllerValidator;
  // State field(s) for target_customer widget.
  FocusNode? targetCustomerFocusNode;
  TextEditingController? targetCustomerTextController;
  String? Function(BuildContext, String?)?
      targetCustomerTextControllerValidator;
  // State field(s) for current_size widget.
  FocusNode? currentSizeFocusNode;
  TextEditingController? currentSizeTextController;
  String? Function(BuildContext, String?)? currentSizeTextControllerValidator;
  // State field(s) for size_toachieve widget.
  FocusNode? sizeToachieveFocusNode;
  TextEditingController? sizeToachieveTextController;
  String? Function(BuildContext, String?)? sizeToachieveTextControllerValidator;
  // State field(s) for product_desc widget.
  FocusNode? productDescFocusNode;
  TextEditingController? productDescTextController;
  String? Function(BuildContext, String?)? productDescTextControllerValidator;
  // State field(s) for primary_revenue widget.
  FocusNode? primaryRevenueFocusNode;
  TextEditingController? primaryRevenueTextController;
  String? Function(BuildContext, String?)?
      primaryRevenueTextControllerValidator;
  // State field(s) for total_revenue widget.
  FocusNode? totalRevenueFocusNode;
  TextEditingController? totalRevenueTextController;
  String? Function(BuildContext, String?)? totalRevenueTextControllerValidator;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // State field(s) for funding_needed widget.
  FocusNode? fundingNeededFocusNode;
  TextEditingController? fundingNeededTextController;
  String? Function(BuildContext, String?)? fundingNeededTextControllerValidator;
  // State field(s) for fund_use widget.
  FocusNode? fundUseFocusNode;
  TextEditingController? fundUseTextController;
  String? Function(BuildContext, String?)? fundUseTextControllerValidator;
  // State field(s) for customer_count widget.
  FocusNode? customerCountFocusNode;
  TextEditingController? customerCountTextController;
  String? Function(BuildContext, String?)? customerCountTextControllerValidator;
  // State field(s) for expected_user_count widget.
  FocusNode? expectedUserCountFocusNode;
  TextEditingController? expectedUserCountTextController;
  String? Function(BuildContext, String?)?
      expectedUserCountTextControllerValidator;
  // State field(s) for patent_name widget.
  FocusNode? patentNameFocusNode;
  TextEditingController? patentNameTextController;
  String? Function(BuildContext, String?)? patentNameTextControllerValidator;
  // State field(s) for patent_number widget.
  FocusNode? patentNumberFocusNode;
  TextEditingController? patentNumberTextController;
  String? Function(BuildContext, String?)? patentNumberTextControllerValidator;
  // State field(s) for trademark_name widget.
  FocusNode? trademarkNameFocusNode;
  TextEditingController? trademarkNameTextController;
  String? Function(BuildContext, String?)? trademarkNameTextControllerValidator;
  // State field(s) for trademark_number widget.
  FocusNode? trademarkNumberFocusNode;
  TextEditingController? trademarkNumberTextController;
  String? Function(BuildContext, String?)?
      trademarkNumberTextControllerValidator;
  // State field(s) for exit_strategy_details widget.
  FocusNode? exitStrategyDetailsFocusNode;
  TextEditingController? exitStrategyDetailsTextController;
  String? Function(BuildContext, String?)?
      exitStrategyDetailsTextControllerValidator;
  // State field(s) for proposed_timeline widget.
  String? proposedTimelineValue;
  FormFieldController<String>? proposedTimelineValueController;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    comNameFocusNode?.dispose();
    comNameTextController?.dispose();

    targetCustomerFocusNode?.dispose();
    targetCustomerTextController?.dispose();

    currentSizeFocusNode?.dispose();
    currentSizeTextController?.dispose();

    sizeToachieveFocusNode?.dispose();
    sizeToachieveTextController?.dispose();

    productDescFocusNode?.dispose();
    productDescTextController?.dispose();

    primaryRevenueFocusNode?.dispose();
    primaryRevenueTextController?.dispose();

    totalRevenueFocusNode?.dispose();
    totalRevenueTextController?.dispose();

    fundingNeededFocusNode?.dispose();
    fundingNeededTextController?.dispose();

    fundUseFocusNode?.dispose();
    fundUseTextController?.dispose();

    customerCountFocusNode?.dispose();
    customerCountTextController?.dispose();

    expectedUserCountFocusNode?.dispose();
    expectedUserCountTextController?.dispose();

    patentNameFocusNode?.dispose();
    patentNameTextController?.dispose();

    patentNumberFocusNode?.dispose();
    patentNumberTextController?.dispose();

    trademarkNameFocusNode?.dispose();
    trademarkNameTextController?.dispose();

    trademarkNumberFocusNode?.dispose();
    trademarkNumberTextController?.dispose();

    exitStrategyDetailsFocusNode?.dispose();
    exitStrategyDetailsTextController?.dispose();
  }
}
