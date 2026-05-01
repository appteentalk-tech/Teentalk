import '/components/testecontraceptie/testecontraceptie_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'contraceptiateste_widget.dart' show ContraceptiatesteWidget;
import 'package:flutter/material.dart';

class ContraceptiatesteModel extends FlutterFlowModel<ContraceptiatesteWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for testecontraceptie component.
  late TestecontraceptieModel testecontraceptieModel;

  @override
  void initState(BuildContext context) {
    testecontraceptieModel =
        createModel(context, () => TestecontraceptieModel());
  }

  @override
  void dispose() {
    testecontraceptieModel.dispose();
  }
}
