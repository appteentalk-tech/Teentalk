import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'pubiclice_model.dart';
export 'pubiclice_model.dart';

class PubicliceWidget extends StatefulWidget {
  const PubicliceWidget({super.key});

  static String routeName = 'PUBICLICE';
  static String routePath = '/pubiclice';

  @override
  State<PubicliceWidget> createState() => _PubicliceWidgetState();
}

class _PubicliceWidgetState extends State<PubicliceWidget> {
  late PubicliceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PubicliceModel());

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
