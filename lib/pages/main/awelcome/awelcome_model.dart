import '/flutter_flow/flutter_flow_util.dart';
import 'awelcome_widget.dart' show AwelcomeWidget;
import 'package:flutter/material.dart';

class AwelcomeModel extends FlutterFlowModel<AwelcomeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
