import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

//import 'package:flutter/services.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}