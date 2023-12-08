import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? emailTextController1;
  String? Function(BuildContext, String?)? emailTextController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? passwordTextController1;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextController1Validator;
  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailController;
  String? Function(BuildContext, String?)? txtEmailControllerValidator;
  // State field(s) for txtSenha widget.
  FocusNode? txtSenhaFocusNode;
  TextEditingController? txtSenhaController;
  late bool txtSenhaVisibility;
  String? Function(BuildContext, String?)? txtSenhaControllerValidator;
  // State field(s) for txtSenhaConfirmar widget.
  FocusNode? txtSenhaConfirmarFocusNode;
  TextEditingController? txtSenhaConfirmarController;
  late bool txtSenhaConfirmarVisibility;
  String? Function(BuildContext, String?)? txtSenhaConfirmarControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
    txtSenhaVisibility = false;
    txtSenhaConfirmarVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    textFieldFocusNode1?.dispose();
    emailTextController1?.dispose();

    textFieldFocusNode2?.dispose();
    passwordTextController1?.dispose();

    txtEmailFocusNode?.dispose();
    txtEmailController?.dispose();

    txtSenhaFocusNode?.dispose();
    txtSenhaController?.dispose();

    txtSenhaConfirmarFocusNode?.dispose();
    txtSenhaConfirmarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
