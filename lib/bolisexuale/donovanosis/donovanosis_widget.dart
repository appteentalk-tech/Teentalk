import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'donovanosis_model.dart';
export 'donovanosis_model.dart';

class DonovanosisWidget extends StatefulWidget {
  const DonovanosisWidget({super.key});

  static String routeName = 'DONOVANOSIS';
  static String routePath = '/donovanosis';

  @override
  State<DonovanosisWidget> createState() => _DonovanosisWidgetState();
}

class _DonovanosisWidgetState extends State<DonovanosisWidget> {
  late DonovanosisModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DonovanosisModel());

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
