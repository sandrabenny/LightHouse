import '/flutter_flow/flutter_flow_util.dart';
import '/pages/navbar/home/home_widget.dart';
import 'homepage_user_widget.dart' show HomepageUserWidget;
import 'package:flutter/material.dart';

class HomepageUserModel extends FlutterFlowModel<HomepageUserWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for home component.
  late HomeModel homeModel;

  @override
  void initState(BuildContext context) {
    homeModel = createModel(context, () => HomeModel());
  }

  @override
  void dispose() {
    homeModel.dispose();
  }
}
