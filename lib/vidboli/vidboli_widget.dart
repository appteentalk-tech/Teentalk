import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'vidboli_model.dart';
export 'vidboli_model.dart';

class VidboliWidget extends StatefulWidget {
  const VidboliWidget({super.key});

  static String routeName = 'vidboli';
  static String routePath = '/vidboli';

  @override
  State<VidboliWidget> createState() => _VidboliWidgetState();
}

class _VidboliWidgetState extends State<VidboliWidget> {
  late VidboliModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VidboliModel());

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
                    'VIDEOS',
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
                Align(
                  alignment: AlignmentDirectional(0.02, 0.05),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 35.0, 0.0, 0.0),
                    child: FlutterFlowVideoPlayer(
                      path:
                          'assets/videos/boli_cu_transmitere_sexuala_engleza_GATA-720p-260501.mp4',
                      videoType: VideoType.asset,
                      width: 350.0,
                      autoPlay: false,
                      looping: true,
                      showControls: true,
                      allowFullScreen: true,
                      allowPlaybackSpeedMenu: false,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.6, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Container(
                      width: 328.3,
                      height: 132.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.61, -0.78),
                              child: Text(
                                '• HIV/AIDS\n• HEPATITIS B\n• HPV\n• GENITAL HERPES\n• MOLLUSCUM GENITALUM',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      font: GoogleFonts.playfairDisplay(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                      ),
                                      color: Colors.black,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.02, 0.05),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: FlutterFlowVideoPlayer(
                      path:
                          'assets/videos/boli_cu_transmitere_sexuala_engleza_GATA-720p-260501.mp4',
                      videoType: VideoType.asset,
                      width: 350.0,
                      autoPlay: false,
                      looping: true,
                      showControls: true,
                      allowFullScreen: true,
                      allowPlaybackSpeedMenu: false,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.6, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Container(
                      width: 335.4,
                      height: 180.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.32, 0.0),
                              child: Text(
                                '• CHLAMYDIA\n• GONORRHEA\n• SYPHILIS\n• MYCOPLASMA GENITALIUM\n• UREAPLASMA UREALYTICUM\n• TRICHOMONIASIS',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      font: GoogleFonts.playfairDisplay(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .fontStyle,
                                      ),
                                      color: Colors.black,
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
