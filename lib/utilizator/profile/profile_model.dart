import '/components/navigationbar_copy/navigationbar_copy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Switch widget.
  bool? switchValue;
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
