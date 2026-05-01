import '/components/correct/correct_widget.dart';
import '/components/incorrect/incorrect_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'test1contracepq3_widget.dart' show Test1contracepq3Widget;
import 'package:flutter/material.dart';

class Test1contracepq3Model extends FlutterFlowModel<Test1contracepq3Widget> {
  ///  Local state fields for this page.

  bool showcorrect = false;

  bool alreadyshown = false;

  bool answeredcorrect = false;

  bool showwrong = false;

  ///  State fields for stateful widgets in this page.

  // Model for correct component.
  late CorrectModel correctModel;
  // Model for incorrect component.
  late IncorrectModel incorrectModel;

  @override
  void initState(BuildContext context) {
    correctModel = createModel(context, () => CorrectModel());
    incorrectModel = createModel(context, () => IncorrectModel());
  }

  @override
  void dispose() {
    correctModel.dispose();
    incorrectModel.dispose();
  }
}
