import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'registrar_lecheria_widget.dart' show RegistrarLecheriaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistrarLecheriaModel extends FlutterFlowModel<RegistrarLecheriaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtDairyName widget.
  FocusNode? txtDairyNameFocusNode;
  TextEditingController? txtDairyNameController;
  String? Function(BuildContext, String?)? txtDairyNameControllerValidator;
  // State field(s) for txtUserName widget.
  FocusNode? txtUserNameFocusNode;
  TextEditingController? txtUserNameController;
  String? Function(BuildContext, String?)? txtUserNameControllerValidator;
  // State field(s) for txtUserEmail widget.
  FocusNode? txtUserEmailFocusNode;
  TextEditingController? txtUserEmailController;
  String? Function(BuildContext, String?)? txtUserEmailControllerValidator;
  // State field(s) for txtPassword widget.
  FocusNode? txtPasswordFocusNode;
  TextEditingController? txtPasswordController;
  late bool txtPasswordVisibility;
  String? Function(BuildContext, String?)? txtPasswordControllerValidator;
  // State field(s) for txtPasswordConfirmation widget.
  FocusNode? txtPasswordConfirmationFocusNode;
  TextEditingController? txtPasswordConfirmationController;
  late bool txtPasswordConfirmationVisibility;
  String? Function(BuildContext, String?)?
      txtPasswordConfirmationControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  LecheriaRecord? lecheriaOutput;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    txtPasswordVisibility = false;
    txtPasswordConfirmationVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    txtDairyNameFocusNode?.dispose();
    txtDairyNameController?.dispose();

    txtUserNameFocusNode?.dispose();
    txtUserNameController?.dispose();

    txtUserEmailFocusNode?.dispose();
    txtUserEmailController?.dispose();

    txtPasswordFocusNode?.dispose();
    txtPasswordController?.dispose();

    txtPasswordConfirmationFocusNode?.dispose();
    txtPasswordConfirmationController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
