import '/components/testebolisexuale/testebolisexuale_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'testebolisex_widget.dart' show TestebolisexWidget;
import 'package:flutter/material.dart';

class TestebolisexModel extends FlutterFlowModel<TestebolisexWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for testebolisexuale component.
  late TestebolisexualeModel testebolisexualeModel;

  @override
  void initState(BuildContext context) {
    testebolisexualeModel = createModel(context, () => TestebolisexualeModel());
  }

  @override
  void dispose() {
    testebolisexualeModel.dispose();
  }
}
