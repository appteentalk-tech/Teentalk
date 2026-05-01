import '/components/navigationbar_copy/navigationbar_copy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'homepage_widget.dart' show HomepageWidget;
import 'package:flutter/material.dart';

class HomepageModel extends FlutterFlowModel<HomepageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for navigationbarCopy component.
  late NavigationbarCopyModel navigationbarCopyModel;

  @override
  void initState(BuildContext context) {
    navigationbarCopyModel =
        createModel(context, () => NavigationbarCopyModel());
  }

  @override
  void dispose() {
    navigationbarCopyModel.dispose();
  }
}
