import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'molluscum_model.dart';
export 'molluscum_model.dart';

class MolluscumWidget extends StatefulWidget {
  const MolluscumWidget({super.key});

  static String routeName = 'MOLLUSCUM';
  static String routePath = '/molluscum';

  @override
  State<MolluscumWidget> createState() => _MolluscumWidgetState();
}

class _MolluscumWidgetState extends State<MolluscumWidget> {
  late MolluscumModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MolluscumModel());

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
