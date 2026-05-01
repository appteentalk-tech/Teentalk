import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'homeicon_model.dart';
export 'homeicon_model.dart';

class HomeiconWidget extends StatefulWidget {
  const HomeiconWidget({
    super.key,
    int? parameter1,
    int? selectedpageindex,
  })  : this.parameter1 = parameter1 ?? 1,
        this.selectedpageindex = selectedpageindex ?? 1;

  final int parameter1;
  final int selectedpageindex;

  @override
  State<HomeiconWidget> createState() => _HomeiconWidgetState();
}

class _HomeiconWidgetState extends State<HomeiconWidget>
    with TickerProviderStateMixin {
  late HomeiconModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeiconModel());

    animationsMap.addAll({
      'dividerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: Offset(0.6, 1.0),
            end: Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Opacity(
          opacity: widget.parameter1 == 2 ? 1.0 : 0.5,
          child: FlutterFlowIconButton(
            borderRadius: 30.0,
            buttonSize: 50.0,
            icon: Icon(
              Icons.home_outlined,
              color: FlutterFlowTheme.of(context).primaryBackground,
              size: 24.0,
            ),
            onPressed: () async {
              context.goNamed(
                HomepageWidget.routeName,
                extra: <String, dynamic>{
                  '__transition_info__': TransitionInfo(
                    hasTransition: true,
                    transitionType: PageTransitionType.fade,
                    duration: Duration(milliseconds: 0),
                  ),
                },
              );
            },
          ),
        ),
        if (widget.selectedpageindex == 1)
          SizedBox(
            width: 30.0,
            child: Divider(
              height: 2.0,
              thickness: 2.0,
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
          ).animateOnPageLoad(animationsMap['dividerOnPageLoadAnimation']!),
      ],
    );
  }
}
