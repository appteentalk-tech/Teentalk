import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'syphilis_model.dart';
export 'syphilis_model.dart';

class SyphilisWidget extends StatefulWidget {
  const SyphilisWidget({super.key});

  static String routeName = 'SYPHILIS';
  static String routePath = '/syphilis';

  @override
  State<SyphilisWidget> createState() => _SyphilisWidgetState();
}

class _SyphilisWidgetState extends State<SyphilisWidget> {
  late SyphilisModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SyphilisModel());

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
