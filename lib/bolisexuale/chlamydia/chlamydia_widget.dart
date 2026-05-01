import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'chlamydia_model.dart';
export 'chlamydia_model.dart';

class ChlamydiaWidget extends StatefulWidget {
  const ChlamydiaWidget({super.key});

  static String routeName = 'CHLAMYDIA';
  static String routePath = '/chlamydia';

  @override
  State<ChlamydiaWidget> createState() => _ChlamydiaWidgetState();
}

class _ChlamydiaWidgetState extends State<ChlamydiaWidget> {
  late ChlamydiaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChlamydiaModel());

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
