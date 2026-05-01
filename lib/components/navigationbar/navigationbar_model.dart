import '/components/homeicon/homeicon_widget.dart';
import '/components/iconprofile/iconprofile_widget.dart';
import '/components/settings/settings_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'navigationbar_widget.dart' show NavigationbarWidget;
import 'package:flutter/material.dart';

class NavigationbarModel extends FlutterFlowModel<NavigationbarWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for settings component.
  late SettingsModel settingsModel;
  // Model for iconprofile component.
  late IconprofileModel iconprofileModel;
  // Model for homeicon component.
  late HomeiconModel homeiconModel;

  @override
  void initState(BuildContext context) {
    settingsModel = createModel(context, () => SettingsModel());
    iconprofileModel = createModel(context, () => IconprofileModel());
    homeiconModel = createModel(context, () => HomeiconModel());
  }

  @override
  void dispose() {
    settingsModel.dispose();
    iconprofileModel.dispose();
    homeiconModel.dispose();
  }
}
