import '/components/side_nav_third_lvl/side_nav_third_lvl_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'settings_thirdlevel_widget.dart' show SettingsThirdlevelWidget;
import 'package:flutter/material.dart';

class SettingsThirdlevelModel
    extends FlutterFlowModel<SettingsThirdlevelWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sideNav_thirdLvl component.
  late SideNavThirdLvlModel sideNavThirdLvlModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideNavThirdLvlModel = createModel(context, () => SideNavThirdLvlModel());
  }

  @override
  void dispose() {
    sideNavThirdLvlModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
