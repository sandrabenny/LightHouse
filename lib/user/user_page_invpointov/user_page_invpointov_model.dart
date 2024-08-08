import '/company_details_display/detaildisplay/detaildisplay_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_page_invpointov_widget.dart' show UserPageInvpointovWidget;
import 'package:flutter/material.dart';

class UserPageInvpointovModel
    extends FlutterFlowModel<UserPageInvpointovWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for detaildisplay component.
  late DetaildisplayModel detaildisplayModel;

  @override
  void initState(BuildContext context) {
    detaildisplayModel = createModel(context, () => DetaildisplayModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    detaildisplayModel.dispose();
  }
}
