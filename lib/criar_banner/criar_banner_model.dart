import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'criar_banner_widget.dart' show CriarBannerWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CriarBannerModel extends FlutterFlowModel<CriarBannerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (criarBanner)] action in criarBanner widget.
  ApiCallResponse? apiResultj6l;
  // State field(s) for descricao widget.
  FocusNode? descricaoFocusNode;
  TextEditingController? descricaoController;
  String? Function(BuildContext, String?)? descricaoControllerValidator;
  // State field(s) for latitude widget.
  FocusNode? latitudeFocusNode;
  TextEditingController? latitudeController;
  String? Function(BuildContext, String?)? latitudeControllerValidator;
  // State field(s) for longitude widget.
  FocusNode? longitudeFocusNode;
  TextEditingController? longitudeController;
  String? Function(BuildContext, String?)? longitudeControllerValidator;
  // State field(s) for obs widget.
  FocusNode? obsFocusNode;
  TextEditingController? obsController;
  String? Function(BuildContext, String?)? obsControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    descricaoFocusNode?.dispose();
    descricaoController?.dispose();

    latitudeFocusNode?.dispose();
    latitudeController?.dispose();

    longitudeFocusNode?.dispose();
    longitudeController?.dispose();

    obsFocusNode?.dispose();
    obsController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
