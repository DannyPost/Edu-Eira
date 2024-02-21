import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/side_nav_third_lvl/side_nav_third_lvl_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'home_thirdlevel_model.dart';
export 'home_thirdlevel_model.dart';

class HomeThirdlevelWidget extends StatefulWidget {
  const HomeThirdlevelWidget({super.key});

  @override
  State<HomeThirdlevelWidget> createState() => _HomeThirdlevelWidgetState();
}

class _HomeThirdlevelWidgetState extends State<HomeThirdlevelWidget> {
  late HomeThirdlevelModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeThirdlevelModel());

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

    return StreamBuilder<List<RecentNewsThirdlvlRecord>>(
      stream: queryRecentNewsThirdlvlRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<RecentNewsThirdlvlRecord>
            homeThirdlevelRecentNewsThirdlvlRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final homeThirdlevelRecentNewsThirdlvlRecord =
            homeThirdlevelRecentNewsThirdlvlRecordList.isNotEmpty
                ? homeThirdlevelRecentNewsThirdlvlRecordList.first
                : null;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            drawer: SizedBox(
              width: 250.0,
              child: Drawer(
                elevation: 16.0,
                child: wrapWithModel(
                  model: _model.sideNavThirdLvlModel,
                  updateCallback: () => setState(() {}),
                  child: const SideNavThirdLvlWidget(
                    navSelected: 1,
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
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(95.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Home',
                        style:
                            FlutterFlowTheme.of(context).headlineLarge.override(
                                  fontFamily: 'Roboto',
                                  color: FlutterFlowTheme.of(context).pageTitle,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.w500,
                                ),
                      ),
                    ),
                  ),
                ].divide(const SizedBox(width: 5.0)),
              ),
              actions: const [],
              centerTitle: true,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Hello ',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: AuthUserStreamWidget(
                                builder: (context) => Text(
                                  currentUserDisplayName,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                '!',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 20.0),
                          child: Text(
                            'Recent News',
                            style: FlutterFlowTheme.of(context).headlineMedium,
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 15.0),
                          child: StreamBuilder<List<RecentNewsRecord>>(
                            stream: queryRecentNewsRecord(
                              singleRecord: true,
                            ),
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
                              List<RecentNewsRecord> textRecentNewsRecordList =
                                  snapshot.data!;
                              // Return an empty Container when the item does not exist.
                              if (snapshot.data!.isEmpty) {
                                return Container();
                              }
                              final textRecentNewsRecord =
                                  textRecentNewsRecordList.isNotEmpty
                                      ? textRecentNewsRecordList.first
                                      : null;
                              return Text(
                                valueOrDefault<String>(
                                  homeThirdlevelRecentNewsThirdlvlRecord?.title,
                                  'NULL',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.normal,
                                    ),
                              );
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: StreamBuilder<List<RecentNewsRecord>>(
                          stream: queryRecentNewsRecord(
                            singleRecord: true,
                          ),
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
                            List<RecentNewsRecord> imageRecentNewsRecordList =
                                snapshot.data!;
                            // Return an empty Container when the item does not exist.
                            if (snapshot.data!.isEmpty) {
                              return Container();
                            }
                            final imageRecentNewsRecord =
                                imageRecentNewsRecordList.isNotEmpty
                                    ? imageRecentNewsRecordList.first
                                    : null;
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                homeThirdlevelRecentNewsThirdlvlRecord!.image,
                                width: 390.0,
                                height: 222.0,
                                fit: BoxFit.cover,
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 0.0, 0.0),
                        child: StreamBuilder<List<RecentNewsRecord>>(
                          stream: queryRecentNewsRecord(
                            singleRecord: true,
                          ),
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
                            List<RecentNewsRecord> textRecentNewsRecordList =
                                snapshot.data!;
                            // Return an empty Container when the item does not exist.
                            if (snapshot.data!.isEmpty) {
                              return Container();
                            }
                            final textRecentNewsRecord =
                                textRecentNewsRecordList.isNotEmpty
                                    ? textRecentNewsRecordList.first
                                    : null;
                            return Text(
                              valueOrDefault<String>(
                                homeThirdlevelRecentNewsThirdlvlRecord?.article,
                                'article',
                              ),
                              style: FlutterFlowTheme.of(context).bodyLarge,
                            );
                          },
                        ),
                      ),
                      Divider(
                        height: 12.0,
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).primary,
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Text(
                            valueOrDefault<String>(
                              homeThirdlevelRecentNewsThirdlvlRecord?.title2,
                              'title2',
                            ),
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 15.0, 0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            homeThirdlevelRecentNewsThirdlvlRecord!.image2,
                            width: 358.0,
                            height: 221.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 10.0, 0.0, 0.0),
                          child: Text(
                            valueOrDefault<String>(
                              homeThirdlevelRecentNewsThirdlvlRecord.article2,
                              'article2',
                            ),
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context).bodyLarge,
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).primary,
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            homeThirdlevelRecentNewsThirdlvlRecord.title3,
                            'title3',
                          ),
                          style: FlutterFlowTheme.of(context).headlineMedium,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 15.0, 20.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            homeThirdlevelRecentNewsThirdlvlRecord.image3,
                            width: 359.0,
                            height: 222.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            homeThirdlevelRecentNewsThirdlvlRecord.article3,
                            'NULL',
                          ),
                          style: FlutterFlowTheme.of(context).bodyLarge,
                        ),
                      ),
                      Divider(
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).primary,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
