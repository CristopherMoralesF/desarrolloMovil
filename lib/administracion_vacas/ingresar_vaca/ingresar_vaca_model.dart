import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'ingresar_vaca_widget.dart' show IngresarVacaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class IngresarVacaModel extends FlutterFlowModel<IngresarVacaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // State field(s) for NombreVaca widget.
  FocusNode? nombreVacaFocusNode;
  TextEditingController? nombreVacaController;
  String? Function(BuildContext, String?)? nombreVacaControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for madre_vaca widget.
  String? madreVacaValue;
  FormFieldController<String>? madreVacaValueController;
  // State field(s) for DropDownSexo widget.
  String? dropDownSexoValue;
  FormFieldController<String>? dropDownSexoValueController;
  // State field(s) for PesoVaca widget.
  FocusNode? pesoVacaFocusNode;
  TextEditingController? pesoVacaController;
  String? Function(BuildContext, String?)? pesoVacaControllerValidator;
  DateTime? datePicked;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    nombreVacaFocusNode?.dispose();
    nombreVacaController?.dispose();

    pesoVacaFocusNode?.dispose();
    pesoVacaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
