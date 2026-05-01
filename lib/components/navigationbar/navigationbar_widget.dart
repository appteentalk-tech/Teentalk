import '/components/homeicon/homeicon_widget.dart';
import '/components/iconprofile/iconprofile_widget.dart';
import '/components/settings/settings_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'navigationbar_model.dart';
export 'navigationbar_model.dart';

class NavigationbarWidget extends StatefulWidget {
  const NavigationbarWidget({
    super.key,
    int? selectedpageindex,
    bool? hidden,
  })  : this.selectedpageindex = selectedpageindex ?? 1,
        this.hidden = hidden ?? false;

  final int selectedpageindex;
  final bool hidden;

  @override
  State<NavigationbarWidget> createState() => _NavigationbarWidgetState();
}

class _NavigationbarWidgetState extends State<NavigationbarWidget> {
  late NavigationbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavigationbarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Stack(
            children: [
              Stack(
                children: [
                  Stack(
                    children: [
                      ClipRect(
                        child: ImageFiltered(
                          imageFilter: ImageFilter.blur(
                            sigmaX: 2.0,
                            sigmaY: 2.0,
                          ),
                          child: Visibility(
                            visible: widget.hidden == false,
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 16.0, 16.0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 10.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(45.0),
                                    topRight: Radius.circular(45.0),
                                    bottomLeft: Radius.circular(45.0),
                                    bottomRight: Radius.circular(45.0),
                                  ),
                                ),
                                child: Container(
                                  width: 360.0,
                                  height: 70.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xB4FFBADD),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x33FFFFFF),
                                        offset: Offset(
                                          0.0,
                                          0.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(45.0),
                                      topRight: Radius.circular(45.0),
                                      bottomLeft: Radius.circular(45.0),
                                      bottomRight: Radius.circular(45.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Opacity(
                opacity: widget.selectedpageindex == 3 ? 1.0 : 0.5,
                child: Align(
                  alignment: AlignmentDirectional(0.68, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 18.0, 0.0, 0.0),
                    child: wrapWithModel(
                      model: _model.settingsModel,
                      updateCallback: () => safeSetState(() {}),
                      child: SettingsWidget(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Opacity(
          opacity: widget.selectedpageindex == 2 ? 1.0 : 0.5,
          child: Align(
            alignment: AlignmentDirectional(-0.68, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 18.0, 0.0, 0.0),
              child: wrapWithModel(
                model: _model.iconprofileModel,
                updateCallback: () => safeSetState(() {}),
                child: IconprofileWidget(),
              ),
            ),
          ),
        ),
        Opacity(
          opacity: widget.selectedpageindex == 1 ? 1.0 : 0.5,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 18.0, 0.0, 0.0),
              child: wrapWithModel(
                model: _model.homeiconModel,
                updateCallback: () => safeSetState(() {}),
                child: HomeiconWidget(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
