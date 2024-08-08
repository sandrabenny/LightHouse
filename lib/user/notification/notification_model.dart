import '/flutter_flow/flutter_flow_util.dart';
import '/pages/navbar/notify/notify_widget.dart';
import 'notification_widget.dart' show NotificationWidget;
import 'package:flutter/material.dart';

class NotificationModel extends FlutterFlowModel<NotificationWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for notify component.
  late NotifyModel notifyModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {
    notifyModel = createModel(context, () => NotifyModel());
  }

  @override
  void dispose() {
    notifyModel.dispose();
    tabBarController?.dispose();
  }
}
