import '/components/detailinvestor_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'invprof_user_pov_widget.dart' show InvprofUserPovWidget;
import 'package:flutter/material.dart';

class InvprofUserPovModel extends FlutterFlowModel<InvprofUserPovWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for detailinvestor component.
  late DetailinvestorModel detailinvestorModel;

  @override
  void initState(BuildContext context) {
    detailinvestorModel = createModel(context, () => DetailinvestorModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    detailinvestorModel.dispose();
  }
}
