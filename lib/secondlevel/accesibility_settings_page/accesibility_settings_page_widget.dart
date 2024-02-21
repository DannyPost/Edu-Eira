import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'accesibility_settings_page_model.dart';
export 'accesibility_settings_page_model.dart';

class AccesibilitySettingsPageWidget extends StatefulWidget {
  const AccesibilitySettingsPageWidget({super.key});

  @override
  State<AccesibilitySettingsPageWidget> createState() =>
      _AccesibilitySettingsPageWidgetState();
}

class _AccesibilitySettingsPageWidgetState
    extends State<AccesibilitySettingsPageWidget> {
  late AccesibilitySettingsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccesibilitySettingsPageModel());

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

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primary,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30.0,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          'Accessibility Settings',
          style: FlutterFlowTheme.of(context).headlineSmall.override(
                fontFamily: 'Roboto',
                color: FlutterFlowTheme.of(context).pageTitle,
                fontSize: 30.0,
              ),
        ),
        actions: const [],
        centerTitle: true,
        elevation: 2.0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: SwitchListTile.adaptive(
              value: _model.switchListTileValue1 ??= true,
              onChanged: (newValue) async {
                setState(() => _model.switchListTileValue1 = newValue);
              },
              title: Text(
                'Enabl Visual Imparement Setting',
                style: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: 'Roboto',
                      lineHeight: 2.0,
                    ),
              ),
              tileColor: FlutterFlowTheme.of(context).secondaryBackground,
              activeColor: FlutterFlowTheme.of(context).primary,
              activeTrackColor: FlutterFlowTheme.of(context).accent1,
              dense: false,
              controlAffinity: ListTileControlAffinity.trailing,
              contentPadding:
                  const EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
            ),
          ),
          SwitchListTile.adaptive(
            value: _model.switchListTileValue2 ??= true,
            onChanged: (newValue) async {
              setState(() => _model.switchListTileValue2 = newValue);
            },
            title: Text(
              'Enable Dyslexic Setting',
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Roboto',
                    lineHeight: 2.0,
                  ),
            ),
            tileColor: FlutterFlowTheme.of(context).secondaryBackground,
            activeColor: FlutterFlowTheme.of(context).primary,
            activeTrackColor: FlutterFlowTheme.of(context).accent1,
            dense: false,
            controlAffinity: ListTileControlAffinity.trailing,
            contentPadding:
                const EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
          ),
        ],
      ),
    );
  }
}
