import '/backend/backend.dart';
import '/components/side_nav_third_lvl/side_nav_third_lvl_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'work_placement_third_level_model.dart';
export 'work_placement_third_level_model.dart';

class WorkPlacementThirdLevelWidget extends StatefulWidget {
  const WorkPlacementThirdLevelWidget({super.key});

  @override
  State<WorkPlacementThirdLevelWidget> createState() =>
      _WorkPlacementThirdLevelWidgetState();
}

class _WorkPlacementThirdLevelWidgetState
    extends State<WorkPlacementThirdLevelWidget> {
  late WorkPlacementThirdLevelModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WorkPlacementThirdLevelModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: SizedBox(
          width: 250.0,
          child: Drawer(
            elevation: 16.0,
            child: wrapWithModel(
              model: _model.sideNavThirdLvlModel,
              updateCallback: () => setState(() {}),
              child: const SideNavThirdLvlWidget(
                navSelected: 4,
              ),
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 0.0,
                borderWidth: 0.0,
                buttonSize: 48.0,
                fillColor: Colors.transparent,
                icon: Icon(
                  Icons.menu_rounded,
                  color: FlutterFlowTheme.of(context).pageTitle,
                  size: 30.0,
                ),
                onPressed: () async {
                  scaffoldKey.currentState!.openDrawer();
                },
              ),
              Align(
                alignment: const AlignmentDirectional(1.0, 0.0),
                child: Text(
                  'Work Placements',
                  style: FlutterFlowTheme.of(context).headlineLarge.override(
                        fontFamily: 'Roboto',
                        color: FlutterFlowTheme.of(context).pageTitle,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ].divide(const SizedBox(width: 5.0)),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 30.0, 20.0, 0.0),
            child: StreamBuilder<List<WorkPlacementsRecord>>(
              stream: queryWorkPlacementsRecord(),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                    ),
                  );
                }
                List<WorkPlacementsRecord> listViewWorkPlacementsRecordList =
                    snapshot.data!;
                return ListView.builder(
                  padding: EdgeInsets.zero,
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: listViewWorkPlacementsRecordList.length,
                  itemBuilder: (context, listViewIndex) {
                    final listViewWorkPlacementsRecord =
                        listViewWorkPlacementsRecordList[listViewIndex];
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 3.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 12.0, 8.0, 12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                listViewWorkPlacementsRecord.careerArea,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 18.0,
                                    ),
                              ),
                              Icon(
                                Icons.chevron_right_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
