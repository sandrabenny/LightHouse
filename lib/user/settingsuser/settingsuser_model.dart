import '/flutter_flow/flutter_flow_util.dart';
import '/pages/navbar/setting/setting_widget.dart';
import 'settingsuser_widget.dart' show SettingsuserWidget;
import 'package:flutter/material.dart';

class SettingsuserModel extends FlutterFlowModel<SettingsuserWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Switch widget.
  bool? switchValue;
  // Model for setting component.
  late SettingModel settingModel;

  @override
  void initState(BuildContext context) {
    settingModel = createModel(context, () => SettingModel());
  }

  @override
  void dispose() {
    settingModel.dispose();
  }
}
