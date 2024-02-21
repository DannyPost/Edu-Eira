import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'general_settings_page_model.dart';
export 'general_settings_page_model.dart';

class GeneralSettingsPageWidget extends StatefulWidget {
  const GeneralSettingsPageWidget({super.key});

  @override
  State<GeneralSettingsPageWidget> createState() =>
      _GeneralSettingsPageWidgetState();
}

class _GeneralSettingsPageWidgetState extends State<GeneralSettingsPageWidget> {
  late GeneralSettingsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GeneralSettingsPageModel());

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
          'General Settings',
          style: FlutterFlowTheme.of(context).headlineSmall.override(
                fontFamily: 'Roboto',
                color: FlutterFlowTheme.of(context).primaryBackground,
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
                'Push Notifications',
                style: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: 'Roboto',
                      lineHeight: 2.0,
                    ),
              ),
              subtitle: Text(
                'Receive Push notifications to keep you updated on any new developments',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Roboto',
                      color: const Color(0xFF524F4F),
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
              'Email Notifications',
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Roboto',
                    lineHeight: 2.0,
                  ),
            ),
            subtitle: Text(
              'Receive email notifications from our team.',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Roboto',
                    color: const Color(0xFF524F4F),
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
          SwitchListTile.adaptive(
            value: _model.switchListTileValue3 ??= true,
            onChanged: (newValue) async {
              setState(() => _model.switchListTileValue3 = newValue);
            },
            title: Text(
              'Location Services',
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Roboto',
                    lineHeight: 2.0,
                  ),
            ),
            subtitle: Text(
              'Allow us access to your location, this helps us give you a better more tailored user expirience.',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Roboto',
                    color: const Color(0xFF524F4F),
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
          SwitchListTile.adaptive(
            value: _model.switchListTileValue4 ??= true,
            onChanged: (newValue) async {
              setState(() => _model.switchListTileValue4 = newValue);
              if (newValue) {
                setDarkModeSetting(context, ThemeMode.dark);
              } else {
                setDarkModeSetting(context, ThemeMode.light);
              }
            },
            title: Text(
              'Dark Mode',
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Roboto',
                    lineHeight: 2.0,
                  ),
            ),
            subtitle: Text(
              'Dark mode improves readability, reduces eye strain, and enhances the user experience with a modern look, potential battery savings, focused content presentation, and increased accessibility.',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Roboto',
                    color: const Color(0xFF524F4F),
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
