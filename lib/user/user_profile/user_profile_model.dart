import '/company_details_display/detaildisplay/detaildisplay_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_profile_widget.dart' show UserProfileWidget;
import 'package:flutter/material.dart';

class UserProfileModel extends FlutterFlowModel<UserProfileWidget> {
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
