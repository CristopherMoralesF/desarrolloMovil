import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'main_menu_widget.dart' show MainMenuWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainMenuModel extends FlutterFlowModel<MainMenuWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - firebaseservice] action in mainMenu widget.
  int? totalCowsValue;
  // Stores action output result for [Custom Action - sumCantidadLecheGenerada] action in mainMenu widget.
  double? totalLecheVar;
  // Stores action output result for [Custom Action - sumCantidadLecheVendida] action in mainMenu widget.
  double? totalLecheVendidaVar;
  // State field(s) for DataCards widget.
  PageController? dataCardsController;

  int get dataCardsCurrentIndex => dataCardsController != null &&
          dataCardsController!.hasClients &&
          dataCardsController!.page != null
      ? dataCardsController!.page!.round()
      : 0;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
