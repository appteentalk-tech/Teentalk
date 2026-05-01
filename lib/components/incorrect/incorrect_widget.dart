import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'incorrect_model.dart';
export 'incorrect_model.dart';

class IncorrectWidget extends StatefulWidget {
  const IncorrectWidget({super.key});

  @override
  State<IncorrectWidget> createState() => _IncorrectWidgetState();
}

class _IncorrectWidgetState extends State<IncorrectWidget> {
  late IncorrectModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IncorrectModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(17.0, 20.0, 10.0, 10.0),
      child: Container(
        width: 70.26,
        height: 82.8,
        decoration: BoxDecoration(),
        child: Lottie.asset(
          'assets/jsons/wrong.json',
          width: 95.07,
          height: 96.9,
          fit: BoxFit.contain,
          animate: true,
        ),
      ),
    );
  }
}
