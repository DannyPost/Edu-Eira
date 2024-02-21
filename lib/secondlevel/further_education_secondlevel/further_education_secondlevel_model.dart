import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'further_education_secondlevel_widget.dart'
    show FurtherEducationSecondlevelWidget;
import 'package:flutter/material.dart';

class FurtherEducationSecondlevelModel
    extends FlutterFlowModel<FurtherEducationSecondlevelWidget> {
  ///  Local state fields for this page.

  bool searchactive = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Searchbar widget.
  final searchbarKey = GlobalKey();
  FocusNode? searchbarFocusNode;
  TextEditingController? searchbarController;
  String? searchbarSelectedOption;
  String? Function(BuildContext, String?)? searchbarControllerValidator;
  List<CollegeListFinalRecord> simpleSearchResults = [];

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchbarFocusNode?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
