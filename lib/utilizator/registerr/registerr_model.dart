import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'registerr_widget.dart' show RegisterrWidget;
import 'package:flutter/material.dart';

class RegisterrModel extends FlutterFlowModel<RegisterrWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nume widget.
  FocusNode? numeFocusNode;
  TextEditingController? numeTextController;
  String? Function(BuildContext, String?)? numeTextControllerValidator;
  String? _numeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for parola widget.
  FocusNode? parolaFocusNode;
  TextEditingController? parolaTextController;
  late bool parolaVisibility;
  String? Function(BuildContext, String?)? parolaTextControllerValidator;
  String? _parolaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for confirm widget.
  FocusNode? confirmFocusNode;
  TextEditingController? confirmTextController;
  late bool confirmVisibility;
  String? Function(BuildContext, String?)? confirmTextControllerValidator;
  String? _confirmTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    numeTextControllerValidator = _numeTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
    parolaVisibility = false;
    parolaTextControllerValidator = _parolaTextControllerValidator;
    confirmVisibility = false;
    confirmTextControllerValidator = _confirmTextControllerValidator;
  }

  @override
  void dispose() {
    numeFocusNode?.dispose();
    numeTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    parolaFocusNode?.dispose();
    parolaTextController?.dispose();

    confirmFocusNode?.dispose();
    confirmTextController?.dispose();
  }
}
