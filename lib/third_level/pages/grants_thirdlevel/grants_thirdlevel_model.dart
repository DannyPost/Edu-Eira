import '/components/side_nav_third_lvl/side_nav_third_lvl_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'grants_thirdlevel_widget.dart' show GrantsThirdlevelWidget;
import 'package:flutter/material.dart';

class GrantsThirdlevelModel extends FlutterFlowModel<GrantsThirdlevelWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNav_thirdLvl component.
  late SideNavThirdLvlModel sideNavThirdLvlModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideNavThirdLvlModel = createModel(context, () => SideNavThirdLvlModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavThirdLvlModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
