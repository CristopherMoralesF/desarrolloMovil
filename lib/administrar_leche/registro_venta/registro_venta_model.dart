import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'registro_venta_widget.dart' show RegistroVentaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistroVentaModel extends FlutterFlowModel<RegistroVentaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for txtIdVenta widget.
  FocusNode? txtIdVentaFocusNode;
  TextEditingController? txtIdVentaController;
  String? Function(BuildContext, String?)? txtIdVentaControllerValidator;
  // State field(s) for txtCantidadVenta widget.
  FocusNode? txtCantidadVentaFocusNode;
  TextEditingController? txtCantidadVentaController;
  String? Function(BuildContext, String?)? txtCantidadVentaControllerValidator;
  // State field(s) for txtFechaVenta widget.
  FocusNode? txtFechaVentaFocusNode;
  TextEditingController? txtFechaVentaController;
  String? Function(BuildContext, String?)? txtFechaVentaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtIdVentaFocusNode?.dispose();
    txtIdVentaController?.dispose();

    txtCantidadVentaFocusNode?.dispose();
    txtCantidadVentaController?.dispose();

    txtFechaVentaFocusNode?.dispose();
    txtFechaVentaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
