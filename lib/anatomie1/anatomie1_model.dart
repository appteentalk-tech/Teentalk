import '/components/navigationbar/navigationbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'anatomie1_widget.dart' show Anatomie1Widget;
import 'package:flutter/material.dart';

class Anatomie1Model extends FlutterFlowModel<Anatomie1Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for navigationbar component.
  late NavigationbarModel navigationbarModel;

  @override
  void initState(BuildContext context) {
    navigationbarModel = createModel(context, () => NavigationbarModel());
  }

  @override
  void dispose() {
    navigationbarModel.dispose();
  }
}
