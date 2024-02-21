import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'colleg_supports_data_secondlevel_model.dart';
export 'colleg_supports_data_secondlevel_model.dart';

class CollegSupportsDataSecondlevelWidget extends StatefulWidget {
  const CollegSupportsDataSecondlevelWidget({
    super.key,
    required this.paragraphrecieve,
  });

  final DocumentReference? paragraphrecieve;

  @override
  State<CollegSupportsDataSecondlevelWidget> createState() =>
      _CollegSupportsDataSecondlevelWidgetState();
}

class _CollegSupportsDataSecondlevelWidgetState
    extends State<CollegSupportsDataSecondlevelWidget> {
  late CollegSupportsDataSecondlevelModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CollegSupportsDataSecondlevelModel());

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

    return StreamBuilder<UniversitynamesRecord>(
      stream: UniversitynamesRecord.getDocument(widget.paragraphrecieve!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
        final collegSupportsDataSecondlevelUniversitynamesRecord =
            snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: FlutterFlowTheme.of(context).primary,
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 40.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pushNamed('CollegeSupports_Secondlevel');
                },
              ),
              title: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 40.0, 0.0),
                  child: Text(
                    collegSupportsDataSecondlevelUniversitynamesRecord.names,
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).headlineLarge,
                  ),
                ),
              ),
              actions: const [],
              centerTitle: false,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 15.0, 0.0, 15.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Supports',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 25.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  if (collegSupportsDataSecondlevelUniversitynamesRecord
                              .title1 !=
                          '')
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (collegSupportsDataSecondlevelUniversitynamesRecord
                                      .title1 !=
                                  '')
                            Expanded(
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: Text(
                                  collegSupportsDataSecondlevelUniversitynamesRecord
                                      .title1,
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 25.0,
                                      ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  if (collegSupportsDataSecondlevelUniversitynamesRecord
                              .para1 !=
                          '')
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          15.0, 15.0, 15.0, 15.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                ),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 3.0,
                                ),
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(-1.0, -1.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      5.0, 5.0, 5.0, 5.0),
                                  child: Text(
                                    collegSupportsDataSecondlevelUniversitynamesRecord
                                        .para1,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (collegSupportsDataSecondlevelUniversitynamesRecord
                              .title2 !=
                          '')
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (collegSupportsDataSecondlevelUniversitynamesRecord
                                      .title2 !=
                                  '')
                            Expanded(
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: Text(
                                  collegSupportsDataSecondlevelUniversitynamesRecord
                                      .title2,
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 25.0,
                                      ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 15.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                              ),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 3.0,
                              ),
                            ),
                            child: Visibility(
                              visible:
                                  collegSupportsDataSecondlevelUniversitynamesRecord
                                              .para2 !=
                                          '',
                              child: Align(
                                alignment: const AlignmentDirectional(-1.0, -1.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      5.0, 5.0, 5.0, 5.0),
                                  child: Text(
                                    collegSupportsDataSecondlevelUniversitynamesRecord
                                        .para2,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (collegSupportsDataSecondlevelUniversitynamesRecord
                              .title3 !=
                          '')
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (collegSupportsDataSecondlevelUniversitynamesRecord
                                      .title3 !=
                                  '')
                            Expanded(
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: Text(
                                  collegSupportsDataSecondlevelUniversitynamesRecord
                                      .title3,
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 25.0,
                                      ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 15.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                              ),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 3.0,
                              ),
                            ),
                            child: Visibility(
                              visible:
                                  collegSupportsDataSecondlevelUniversitynamesRecord
                                              .para3 !=
                                          '',
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 5.0, 5.0, 5.0),
                                child: Text(
                                  collegSupportsDataSecondlevelUniversitynamesRecord
                                      .para3,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (collegSupportsDataSecondlevelUniversitynamesRecord
                              .title4 !=
                          '')
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (collegSupportsDataSecondlevelUniversitynamesRecord
                                      .title4 !=
                                  '')
                            Expanded(
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: Text(
                                  collegSupportsDataSecondlevelUniversitynamesRecord
                                      .title4,
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 25.0,
                                      ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  if (collegSupportsDataSecondlevelUniversitynamesRecord
                              .para4 !=
                          '')
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          15.0, 15.0, 15.0, 15.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                ),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 3.0,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 5.0, 5.0, 5.0),
                                child: Text(
                                  collegSupportsDataSecondlevelUniversitynamesRecord
                                      .para4,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (collegSupportsDataSecondlevelUniversitynamesRecord
                              .title5 !=
                          '')
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (collegSupportsDataSecondlevelUniversitynamesRecord
                                      .title5 !=
                                  '')
                            Expanded(
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: Text(
                                  collegSupportsDataSecondlevelUniversitynamesRecord
                                      .title5,
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 25.0,
                                      ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  if (collegSupportsDataSecondlevelUniversitynamesRecord
                              .para5 !=
                          '')
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          15.0, 15.0, 15.0, 15.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                ),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 3.0,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 5.0, 5.0, 5.0),
                                child: Text(
                                  collegSupportsDataSecondlevelUniversitynamesRecord
                                      .para5,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (collegSupportsDataSecondlevelUniversitynamesRecord
                              .title6 !=
                          '')
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (collegSupportsDataSecondlevelUniversitynamesRecord
                                      .title6 !=
                                  '')
                            Expanded(
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: Text(
                                  collegSupportsDataSecondlevelUniversitynamesRecord
                                      .title6,
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 25.0,
                                      ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  if (collegSupportsDataSecondlevelUniversitynamesRecord
                              .para6 !=
                          '')
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          15.0, 15.0, 15.0, 15.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                ),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 3.0,
                                ),
                              ),
                              child: Visibility(
                                visible:
                                    collegSupportsDataSecondlevelUniversitynamesRecord
                                                .para6 !=
                                            '',
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      5.0, 5.0, 5.0, 5.0),
                                  child: Text(
                                    collegSupportsDataSecondlevelUniversitynamesRecord
                                        .para6,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (collegSupportsDataSecondlevelUniversitynamesRecord
                              .title7 !=
                          '')
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (collegSupportsDataSecondlevelUniversitynamesRecord
                                      .title7 !=
                                  '')
                            Expanded(
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: Text(
                                  collegSupportsDataSecondlevelUniversitynamesRecord
                                      .title7,
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 25.0,
                                      ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  if (collegSupportsDataSecondlevelUniversitynamesRecord
                              .para7 !=
                          '')
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          15.0, 15.0, 15.0, 15.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                ),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 3.0,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 5.0, 5.0, 5.0),
                                child: Text(
                                  collegSupportsDataSecondlevelUniversitynamesRecord
                                      .para7,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (collegSupportsDataSecondlevelUniversitynamesRecord
                              .title8 !=
                          '')
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (collegSupportsDataSecondlevelUniversitynamesRecord
                                      .title8 !=
                                  '')
                            Expanded(
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: Text(
                                  collegSupportsDataSecondlevelUniversitynamesRecord
                                      .title8,
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 25.0,
                                      ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  if (collegSupportsDataSecondlevelUniversitynamesRecord
                              .para8 !=
                          '')
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          15.0, 15.0, 15.0, 15.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                ),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 3.0,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 5.0, 5.0, 5.0),
                                child: Text(
                                  collegSupportsDataSecondlevelUniversitynamesRecord
                                      .para8,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (collegSupportsDataSecondlevelUniversitynamesRecord
                              .title9 !=
                          '')
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (collegSupportsDataSecondlevelUniversitynamesRecord
                                      .title9 !=
                                  '')
                            Expanded(
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: Text(
                                  collegSupportsDataSecondlevelUniversitynamesRecord
                                      .title9,
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 25.0,
                                      ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  if (collegSupportsDataSecondlevelUniversitynamesRecord
                              .title9 !=
                          '')
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          15.0, 15.0, 15.0, 15.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                ),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 3.0,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 5.0, 5.0, 5.0),
                                child: Text(
                                  collegSupportsDataSecondlevelUniversitynamesRecord
                                      .para9,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
