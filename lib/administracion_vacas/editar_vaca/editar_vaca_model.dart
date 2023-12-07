import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_vaca_widget.dart' show EditarVacaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarVacaModel extends FlutterFlowModel<EditarVacaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for txt_nombreVaca widget.
  FocusNode? txtNombreVacaFocusNode;
  TextEditingController? txtNombreVacaController;
  String? Function(BuildContext, String?)? txtNombreVacaControllerValidator;
  // State field(s) for drop_padre widget.
  String? dropPadreValue;
  FormFieldController<String>? dropPadreValueController;
  // State field(s) for drop_madrew widget.
  String? dropMadrewValue;
  FormFieldController<String>? dropMadrewValueController;
  // State field(s) for drop_Sexo widget.
  String? dropSexoValue;
  FormFieldController<String>? dropSexoValueController;
  // State field(s) for txt_Peso widget.
  FocusNode? txtPesoFocusNode;
  TextEditingController? txtPesoController;
  String? Function(BuildContext, String?)? txtPesoControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtNombreVacaFocusNode?.dispose();
    txtNombreVacaController?.dispose();

    txtPesoFocusNode?.dispose();
    txtPesoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
