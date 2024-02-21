import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'termsandconditon_model.dart';
export 'termsandconditon_model.dart';

class TermsandconditonWidget extends StatefulWidget {
  const TermsandconditonWidget({super.key});

  @override
  State<TermsandconditonWidget> createState() => _TermsandconditonWidgetState();
}

class _TermsandconditonWidgetState extends State<TermsandconditonWidget> {
  late TermsandconditonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsandconditonModel());

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

    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 300.0,
        height: 300.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  '',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
