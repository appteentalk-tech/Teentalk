import '/components/navigationbar_copy/navigationbar_copy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'logout_widget.dart' show LogoutWidget;
import 'package:flutter/material.dart';

class LogoutModel extends FlutterFlowModel<LogoutWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navigationbarCopy component.
  late NavigationbarCopyModel navigationbarCopyModel;

  @override
  void initState(BuildContext context) {
    navigationbarCopyModel =
        createModel(context, () => NavigationbarCopyModel());
  }

  @override
  void dispose() {
    navigationbarCopyModel.dispose();
  }
}
