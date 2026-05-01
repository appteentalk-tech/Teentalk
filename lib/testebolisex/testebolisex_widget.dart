import '/components/testebolisexuale/testebolisexuale_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'testebolisex_model.dart';
export 'testebolisex_model.dart';

class TestebolisexWidget extends StatefulWidget {
  const TestebolisexWidget({super.key});

  static String routeName = 'testebolisex';
  static String routePath = '/testebolisex';

  @override
  State<TestebolisexWidget> createState() => _TestebolisexWidgetState();
}

class _TestebolisexWidgetState extends State<TestebolisexWidget> {
  late TestebolisexModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TestebolisexModel());

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
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/Design_fara_titlu_copy_2.png',
              ).image,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(-0.85, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.safePop();
                      },
                      child: Container(
                        width: 60.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset(
                              'assets/images/Go_Back__2_-removebg-preview.png',
                            ).image,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.01, -0.74),
                  child: Text(
                    'QUIZZES',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).headlineMediumFamily,
                          color: Colors.black,
                          fontSize: 50.0,
                          letterSpacing: 0.0,
                          useGoogleFonts: !FlutterFlowTheme.of(context)
                              .headlineMediumIsCustom,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                  child: wrapWithModel(
                    model: _model.testebolisexualeModel,
                    updateCallback: () => safeSetState(() {}),
                    child: TestebolisexualeWidget(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
