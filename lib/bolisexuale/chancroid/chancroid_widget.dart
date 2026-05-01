import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'chancroid_model.dart';
export 'chancroid_model.dart';

class ChancroidWidget extends StatefulWidget {
  const ChancroidWidget({super.key});

  static String routeName = 'CHANCROID';
  static String routePath = '/chancroid';

  @override
  State<ChancroidWidget> createState() => _ChancroidWidgetState();
}

class _ChancroidWidgetState extends State<ChancroidWidget> {
  late ChancroidModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChancroidModel());

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
