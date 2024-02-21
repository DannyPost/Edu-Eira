import '/components/side_nav_third_lvl/side_nav_third_lvl_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'internships_thirdlevel_widget.dart' show InternshipsThirdlevelWidget;
import 'package:flutter/material.dart';

class InternshipsThirdlevelModel
    extends FlutterFlowModel<InternshipsThirdlevelWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
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
