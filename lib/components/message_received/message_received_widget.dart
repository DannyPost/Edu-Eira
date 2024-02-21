import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'message_received_model.dart';
export 'message_received_model.dart';

class MessageReceivedWidget extends StatefulWidget {
  const MessageReceivedWidget({super.key});

  @override
  State<MessageReceivedWidget> createState() => _MessageReceivedWidgetState();
}

class _MessageReceivedWidgetState extends State<MessageReceivedWidget> {
  late MessageReceivedModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MessageReceivedModel());

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

    return Material(
      color: Colors.transparent,
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        width: 250.0,
        height: 150.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primary,
          boxShadow: const [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0x33000000),
              offset: Offset(0.0, 2.0),
            )
          ],
          borderRadius: BorderRadius.circular(15.0),
        ),
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: Text(
          'Message Sent!!',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Roboto',
                fontSize: 30.0,
              ),
        ),
      ),
    );
  }
}
