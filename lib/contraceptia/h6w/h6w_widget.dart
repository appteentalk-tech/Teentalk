import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'h6w_model.dart';
export 'h6w_model.dart';

class H6wWidget extends StatefulWidget {
  const H6wWidget({super.key});

  static String routeName = 'H6W';
  static String routePath = '/h6w';

  @override
  State<H6wWidget> createState() => _H6wWidgetState();
}

class _H6wWidgetState extends State<H6wWidget> {
  late H6wModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => H6wModel());

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
        body: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            constraints: BoxConstraints(
              maxWidth: 450.0,
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset(
                  'assets/images/Design_fr_titlu_(1).png',
                ).image,
              ),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-0.93, -1.01),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 60.0, 0.0, 0.0),
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
                        Text(
                          'Hormonal methods',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                font: GoogleFonts.playfairDisplay(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .fontStyle,
                                ),
                                color: Colors.black,
                                fontSize: 28.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .fontStyle,
                              ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 30.0, 0.0, 30.0),
                          child: Container(
                            width: 350.0,
                            height: 1460.2,
                            decoration: BoxDecoration(
                              color: Color(0xB7FFFFFF),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  30.0, 30.0, 30.0, 30.0),
                              child: Text(
                                'Hormonal methods work by preventing ovulation, thickening cervical mucus, and altering the uterine lining, thereby reducing the chances of fertilization and implantation.\n\nCombined oral contraceptives (the pill)\nContain estrogen and progestin and are taken daily, usually for 21 days followed by a break.\nEffectiveness: about 91% with typical use.\nBenefits: regulate the menstrual cycle, reduce menstrual pain, and improve certain gynecological conditions.\nLimitations: require consistent use and are not suitable for some medical conditions.\n\nProgestin-only pill (mini-pill)\nContains only progestin and is taken daily.\nEffectiveness: similar to combined pills.\nAdvantage: can be used when estrogen is contraindicated, including during breastfeeding.\n\nContraceptive injections\nAdministered intramuscularly approximately every 3 months.\nEffectiveness: over 99% with correct use.\nAdvantage: does not require daily administration.\nLimitations: may cause menstrual changes and systemic side effects.\n\nSubdermal contraceptive implant\nA small device inserted under the skin of the arm that releases progestin continuously.\nEffectiveness: about 99.9%.\nDuration: up to 3 years.\nAdvantage: long-term protection without daily effort.',
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      font: GoogleFonts.nunito(
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontStyle,
                                      ),
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 30.0),
                          child: Container(
                            width: 350.0,
                            height: 1008.7,
                            decoration: BoxDecoration(
                              color: Color(0xA5FFFFFF),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  30.0, 30.0, 30.0, 30.0),
                              child: Text(
                                'Contraceptive patch\n\nApplied to the skin and replaced weekly for 3 consecutive weeks.\nEffectiveness: about 91%.\nWorks by releasing hormones continuously.\n\nVaginal ring\n\nInserted into the vagina for 3 weeks, followed by a one-week break. \nEffectiveness: up to 99.7% with correct use. \nReleases hormones continuously.\n\nSpermicides\n\nChemical substances available as gels, creams, foams, or suppositories that destroy sperm. They are applied intravaginally before intercourse.\nEffectiveness: about 60–80% when used alone.\nUseful information: recommended in combination with other barrier methods to increase effectiveness.\nThey do not protect against sexually transmitted infections.',
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      font: GoogleFonts.nunito(
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontStyle,
                                      ),
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ],
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
