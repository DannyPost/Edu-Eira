import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'side_nav_second_lvl_model.dart';
export 'side_nav_second_lvl_model.dart';

class SideNavSecondLvlWidget extends StatefulWidget {
  const SideNavSecondLvlWidget({
    super.key,
    required this.navSelected,
  });

  final int? navSelected;

  @override
  State<SideNavSecondLvlWidget> createState() => _SideNavSecondLvlWidgetState();
}

class _SideNavSecondLvlWidgetState extends State<SideNavSecondLvlWidget> {
  late SideNavSecondLvlModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SideNavSecondLvlModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Opacity(
      opacity: FFAppState().navOpen ? 1.0 : 0.0,
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xCD000000),
        ),
        alignment: const AlignmentDirectional(-1.0, 0.0),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          width: FFAppState().navOpen == true ? 260.0 : 0.0,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 35.0, 0.0, 25.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Text(
                          'Edu Eire',
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Celtic',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 40.0,
                                fontWeight: FontWeight.w600,
                                useGoogleFonts: false,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 2.0,
                  color: FlutterFlowTheme.of(context).lineColor,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15.0, 5.0, 0.0, 10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Hello ',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Roboto',
                              fontSize: 21.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      AuthUserStreamWidget(
                        builder: (context) => Text(
                          currentUserDisplayName,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Roboto',
                                    fontSize: 21.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                      Text(
                        '!',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Roboto',
                              fontSize: 21.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      onEnter: ((event) async {
                        setState(() => _model.mouseRegionHovered1 = true);
                      }),
                      onExit: ((event) async {
                        setState(() => _model.mouseRegionHovered1 = false);
                      }),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          setState(() {
                            FFAppState().navOpen = false;
                          });

                          context.pushNamed('Home_Secondlevel');
                        },
                        child: Container(
                          width: 245.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: () {
                              if (_model.mouseRegionHovered1) {
                                return FlutterFlowTheme.of(context).accent4;
                              } else if (widget.navSelected == 1) {
                                return FlutterFlowTheme.of(context).primary;
                              } else {
                                return FlutterFlowTheme.of(context)
                                    .secondaryBackground;
                              }
                            }(),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(20.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(20.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.home_rounded,
                                  color: widget.navSelected == 1
                                      ? FlutterFlowTheme.of(context).primaryText
                                      : FlutterFlowTheme.of(context).primary,
                                  size: 28.0,
                                ),
                                Text(
                                  'Home',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ].divide(const SizedBox(width: 10.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      onEnter: ((event) async {
                        setState(() => _model.mouseRegionHovered2 = true);
                      }),
                      onExit: ((event) async {
                        setState(() => _model.mouseRegionHovered2 = false);
                      }),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          setState(() {
                            FFAppState().navOpen = false;
                          });

                          context.pushNamed('Grants_SecondLevel');
                        },
                        child: Container(
                          width: 245.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: () {
                              if (_model.mouseRegionHovered2) {
                                return FlutterFlowTheme.of(context).accent4;
                              } else if (widget.navSelected == 2) {
                                return FlutterFlowTheme.of(context).primary;
                              } else {
                                return FlutterFlowTheme.of(context)
                                    .secondaryBackground;
                              }
                            }(),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(20.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(20.0),
                            ),
                            border: Border.all(
                              color: Colors.transparent,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.school_rounded,
                                  color: widget.navSelected == 2
                                      ? FlutterFlowTheme.of(context).primaryText
                                      : FlutterFlowTheme.of(context).primary,
                                  size: 28.0,
                                ),
                                Text(
                                  'Grants',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ].divide(const SizedBox(width: 10.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      onEnter: ((event) async {
                        setState(() => _model.mouseRegionHovered3 = true);
                      }),
                      onExit: ((event) async {
                        setState(() => _model.mouseRegionHovered3 = false);
                      }),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          setState(() {
                            FFAppState().navOpen = false;
                          });

                          context.pushNamed('CollegeSupports_Secondlevel');
                        },
                        child: Container(
                          width: 245.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: () {
                              if (_model.mouseRegionHovered3) {
                                return FlutterFlowTheme.of(context).accent4;
                              } else if (widget.navSelected == 3) {
                                return FlutterFlowTheme.of(context).primary;
                              } else {
                                return FlutterFlowTheme.of(context)
                                    .secondaryBackground;
                              }
                            }(),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(20.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(20.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.menu_book_rounded,
                                  color: widget.navSelected == 3
                                      ? FlutterFlowTheme.of(context).primaryText
                                      : FlutterFlowTheme.of(context).primary,
                                  size: 28.0,
                                ),
                                Text(
                                  'College Supports',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ].divide(const SizedBox(width: 10.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      onEnter: ((event) async {
                        setState(() => _model.mouseRegionHovered4 = true);
                      }),
                      onExit: ((event) async {
                        setState(() => _model.mouseRegionHovered4 = false);
                      }),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          setState(() {
                            FFAppState().navOpen = false;
                          });

                          context.pushNamed('FurtherEducation_Secondlevel');
                        },
                        child: Container(
                          width: 245.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: () {
                              if (_model.mouseRegionHovered4) {
                                return FlutterFlowTheme.of(context).accent4;
                              } else if (widget.navSelected == 4) {
                                return FlutterFlowTheme.of(context).primary;
                              } else {
                                return FlutterFlowTheme.of(context)
                                    .secondaryBackground;
                              }
                            }(),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(20.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(20.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.school,
                                  color: widget.navSelected == 4
                                      ? FlutterFlowTheme.of(context).primaryText
                                      : FlutterFlowTheme.of(context).primary,
                                  size: 23.0,
                                ),
                                Text(
                                  'Further Education',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ].divide(const SizedBox(width: 10.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      onEnter: ((event) async {
                        setState(() => _model.mouseRegionHovered5 = true);
                      }),
                      onExit: ((event) async {
                        setState(() => _model.mouseRegionHovered5 = false);
                      }),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          setState(() {
                            FFAppState().navOpen = false;
                          });

                          context.pushNamed('AcademicSupport_Secondlevel');
                        },
                        child: Container(
                          width: 245.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: () {
                              if (_model.mouseRegionHovered5) {
                                return FlutterFlowTheme.of(context).accent4;
                              } else if (widget.navSelected == 5) {
                                return FlutterFlowTheme.of(context).primary;
                              } else {
                                return FlutterFlowTheme.of(context)
                                    .secondaryBackground;
                              }
                            }(),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(20.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(20.0),
                            ),
                            border: Border.all(
                              color: Colors.transparent,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.draw_rounded,
                                  color: widget.navSelected == 5
                                      ? FlutterFlowTheme.of(context).primaryText
                                      : FlutterFlowTheme.of(context).primary,
                                  size: 28.0,
                                ),
                                Text(
                                  'Academic Support',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ].divide(const SizedBox(width: 10.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      onEnter: ((event) async {
                        setState(() => _model.mouseRegionHovered6 = true);
                      }),
                      onExit: ((event) async {
                        setState(() => _model.mouseRegionHovered6 = false);
                      }),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          setState(() {
                            FFAppState().navOpen = false;
                          });

                          context.pushNamed('StudentDeals_Secondlevel');
                        },
                        child: Container(
                          width: 245.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: () {
                              if (_model.mouseRegionHovered6) {
                                return FlutterFlowTheme.of(context).accent4;
                              } else if (widget.navSelected == 6) {
                                return FlutterFlowTheme.of(context).primary;
                              } else {
                                return FlutterFlowTheme.of(context)
                                    .secondaryBackground;
                              }
                            }(),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(20.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(20.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.euro_rounded,
                                  color: widget.navSelected == 6
                                      ? FlutterFlowTheme.of(context).primaryText
                                      : FlutterFlowTheme.of(context).primary,
                                  size: 28.0,
                                ),
                                Text(
                                  'Student Deals',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ].divide(const SizedBox(width: 10.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      onEnter: ((event) async {
                        setState(() => _model.mouseRegionHovered7 = true);
                      }),
                      onExit: ((event) async {
                        setState(() => _model.mouseRegionHovered7 = false);
                      }),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          setState(() {
                            FFAppState().navOpen = false;
                          });

                          context.pushNamed('Settings');
                        },
                        child: Container(
                          width: 245.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: () {
                              if (_model.mouseRegionHovered7) {
                                return FlutterFlowTheme.of(context).accent4;
                              } else if (widget.navSelected == 7) {
                                return FlutterFlowTheme.of(context).primary;
                              } else {
                                return FlutterFlowTheme.of(context)
                                    .secondaryBackground;
                              }
                            }(),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(20.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(20.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.settings_rounded,
                                  color: widget.navSelected == 7
                                      ? FlutterFlowTheme.of(context).primaryText
                                      : FlutterFlowTheme.of(context).primary,
                                  size: 28.0,
                                ),
                                Text(
                                  'Settings',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ].divide(const SizedBox(width: 10.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      onEnter: ((event) async {
                        setState(() => _model.mouseRegionHovered8 = true);
                      }),
                      onExit: ((event) async {
                        setState(() => _model.mouseRegionHovered8 = false);
                      }),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          setState(() {
                            FFAppState().navOpen = false;
                          });

                          context.pushNamed('Help_Secondlevel');
                        },
                        child: Container(
                          width: 245.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: () {
                              if (_model.mouseRegionHovered8) {
                                return FlutterFlowTheme.of(context).accent4;
                              } else if (widget.navSelected == 8) {
                                return FlutterFlowTheme.of(context).primary;
                              } else {
                                return FlutterFlowTheme.of(context)
                                    .secondaryBackground;
                              }
                            }(),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(20.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(20.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.question_mark_rounded,
                                  color: widget.navSelected == 8
                                      ? FlutterFlowTheme.of(context).primaryText
                                      : FlutterFlowTheme.of(context).primary,
                                  size: 28.0,
                                ),
                                Text(
                                  'Help',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ].divide(const SizedBox(width: 10.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
