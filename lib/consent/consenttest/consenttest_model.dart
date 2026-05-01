import '/components/testeconsent/testeconsent_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'consenttest_widget.dart' show ConsenttestWidget;
import 'package:flutter/material.dart';

class ConsenttestModel extends FlutterFlowModel<ConsenttestWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for testeconsent component.
  late TesteconsentModel testeconsentModel;

  @override
  void initState(BuildContext context) {
    testeconsentModel = createModel(context, () => TesteconsentModel());
  }

  @override
  void dispose() {
    testeconsentModel.dispose();
  }
}
