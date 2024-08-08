import '/components/detailinvestor_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/navbar/iprofile/iprofile_widget.dart';
import 'investor_profile_widget.dart' show InvestorProfileWidget;
import 'package:flutter/material.dart';

class InvestorProfileModel extends FlutterFlowModel<InvestorProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for detailinvestor component.
  late DetailinvestorModel detailinvestorModel;
  // Model for iprofile component.
  late IprofileModel iprofileModel;

  @override
  void initState(BuildContext context) {
    detailinvestorModel = createModel(context, () => DetailinvestorModel());
    iprofileModel = createModel(context, () => IprofileModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    detailinvestorModel.dispose();
    iprofileModel.dispose();
  }
}
