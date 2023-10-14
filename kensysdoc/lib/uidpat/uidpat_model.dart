import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'uidpat_widget.dart' show UidpatWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UidpatModel extends FlutterFlowModel<UidpatWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for uid widget.
  TextEditingController? uidController;
  String? Function(BuildContext, String?)? uidControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    uidController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
