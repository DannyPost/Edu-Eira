import '/backend/backend.dart';
import '/components/side_nav_third_lvl/side_nav_third_lvl_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'student_deals_thirdlevel_model.dart';
export 'student_deals_thirdlevel_model.dart';

class StudentDealsThirdlevelWidget extends StatefulWidget {
  const StudentDealsThirdlevelWidget({super.key});

  @override
  State<StudentDealsThirdlevelWidget> createState() =>
      _StudentDealsThirdlevelWidgetState();
}

class _StudentDealsThirdlevelWidgetState
    extends State<StudentDealsThirdlevelWidget> {
  late StudentDealsThirdlevelModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StudentDealsThirdlevelModel());

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
                navSelected: 6,
              ),
            ),
          ),
        ),
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, _) => [
            SliverAppBar(
              pinned: false,
              floating: false,
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
                          const EdgeInsetsDirectional.fromSTEB(45.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Student Deals',
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
              centerTitle: false,
              elevation: 2.0,
            )
          ],
          body: Builder(
            builder: (context) {
              return Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(30.0, 20.0, 30.0, 0.0),
                child: StreamBuilder<List<StudentDealsNameRecord>>(
                  stream: queryStudentDealsNameRecord(),
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
                    List<StudentDealsNameRecord>
                        listViewStudentDealsNameRecordList = snapshot.data!;
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewStudentDealsNameRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewStudentDealsNameRecord =
                            listViewStudentDealsNameRecordList[listViewIndex];
                        return Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 20.0),
                          child: Container(
                            width: 330.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 8.0,
                                  color: Color(0x230F1113),
                                  offset: Offset(0.0, 4.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 3.0,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Hero(
                                  tag: listViewStudentDealsNameRecord.image,
                                  transitionOnUserGestures: true,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(0.0),
                                      bottomRight: Radius.circular(0.0),
                                      topLeft: Radius.circular(10.0),
                                      topRight: Radius.circular(10.0),
                                    ),
                                    child: Image.network(
                                      listViewStudentDealsNameRecord.image,
                                      width: double.infinity,
                                      height: 200.0,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 12.0, 16.0, 12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              listViewStudentDealsNameRecord
                                                  .name,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge,
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    valueOrDefault<String>(
                                                      listViewStudentDealsNameRecord
                                                          .lastUpdated
                                                          ?.toString(),
                                                      '00/00/0000',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      ToggleIcon(
                                        onPressed: () async {
                                          await listViewStudentDealsNameRecord
                                              .reference
                                              .update({
                                            ...mapToFirestore(
                                              {
                                                'is_favorite':
                                                    !listViewStudentDealsNameRecord
                                                        .isFavorite,
                                              },
                                            ),
                                          });
                                        },
                                        value: listViewStudentDealsNameRecord
                                            .isFavorite,
                                        onIcon: Icon(
                                          Icons.favorite_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          size: 25.0,
                                        ),
                                        offIcon: Icon(
                                          Icons.favorite_border_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 25.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
