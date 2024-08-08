import '/flutter_flow/flutter_flow_util.dart';
import '/pages/navbar/inotify/inotify_widget.dart';
import 'notificationinv_widget.dart' show NotificationinvWidget;
import 'package:flutter/material.dart';

class NotificationinvModel extends FlutterFlowModel<NotificationinvWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for inotify component.
  late InotifyModel inotifyModel;

  @override
  void initState(BuildContext context) {
    inotifyModel = createModel(context, () => InotifyModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    inotifyModel.dispose();
  }
}
