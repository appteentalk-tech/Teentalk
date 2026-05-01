import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'mycoplasma_model.dart';
export 'mycoplasma_model.dart';

class MycoplasmaWidget extends StatefulWidget {
  const MycoplasmaWidget({super.key});

  static String routeName = 'MYCOPLASMA';
  static String routePath = '/mycoplasma';

  @override
  State<MycoplasmaWidget> createState() => _MycoplasmaWidgetState();
}

class _MycoplasmaWidgetState extends State<MycoplasmaWidget> {
  late MycoplasmaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MycoplasmaModel());

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
