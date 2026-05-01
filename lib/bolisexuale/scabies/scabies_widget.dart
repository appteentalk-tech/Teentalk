import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'scabies_model.dart';
export 'scabies_model.dart';

class ScabiesWidget extends StatefulWidget {
  const ScabiesWidget({super.key});

  static String routeName = 'SCABIES';
  static String routePath = '/scabies';

  @override
  State<ScabiesWidget> createState() => _ScabiesWidgetState();
}

class _ScabiesWidgetState extends State<ScabiesWidget> {
  late ScabiesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScabiesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      ),
    );
  }
}
