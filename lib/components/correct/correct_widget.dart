import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'correct_model.dart';
export 'correct_model.dart';

class CorrectWidget extends StatefulWidget {
  const CorrectWidget({super.key});

  @override
  State<CorrectWidget> createState() => _CorrectWidgetState();
}

class _CorrectWidgetState extends State<CorrectWidget> {
  late CorrectModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CorrectModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
      child: Container(
        width: 141.5,
        height: 116.4,
        decoration: BoxDecoration(),
        child: Lottie.asset(
          'assets/jsons/Success_Animation_Var_1.json',
          width: 132.5,
          height: 129.3,
          fit: BoxFit.contain,
          animate: true,
        ),
      ),
    );
  }
}
