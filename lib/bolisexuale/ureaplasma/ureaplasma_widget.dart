import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'ureaplasma_model.dart';
export 'ureaplasma_model.dart';

class UreaplasmaWidget extends StatefulWidget {
  const UreaplasmaWidget({super.key});

  static String routeName = 'UREAPLASMA';
  static String routePath = '/ureaplasma';

  @override
  State<UreaplasmaWidget> createState() => _UreaplasmaWidgetState();
}

class _UreaplasmaWidgetState extends State<UreaplasmaWidget> {
  late UreaplasmaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UreaplasmaModel());

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
