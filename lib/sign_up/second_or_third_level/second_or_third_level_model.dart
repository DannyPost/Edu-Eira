import '/flutter_flow/flutter_flow_util.dart';
import 'second_or_third_level_widget.dart' show SecondOrThirdLevelWidget;
import 'package:flutter/material.dart';

class SecondOrThirdLevelModel
    extends FlutterFlowModel<SecondOrThirdLevelWidget> {
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
