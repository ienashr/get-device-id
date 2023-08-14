import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.testAgent = await actions.deviceInfoPlugin();
      _model.infoIos = await actions.deviceInfoIOS();
      _model.hasilJson = await actions.androidjson();
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            'Calculator',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (_model.testAgent != null && _model.testAgent != '')
                    Text(
                      _model.testAgent!,
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Text(
                      'android',
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                  if (getJsonField(
                        _model.hasilJson,
                        r'''$.brand''',
                      ) !=
                      null)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                      child: Text(
                        getJsonField(
                          _model.hasilJson,
                          r'''$.brand''',
                        ).toString(),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                  if (getJsonField(
                        _model.hasilJson,
                        r'''$.model''',
                      ) !=
                      null)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                      child: Text(
                        getJsonField(
                          _model.hasilJson,
                          r'''$.model''',
                        ).toString(),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                  if (getJsonField(
                        _model.hasilJson,
                        r'''$.device''',
                      ) !=
                      null)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                      child: Text(
                        getJsonField(
                          _model.hasilJson,
                          r'''$.device''',
                        ).toString(),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                  Text(
                    'ios',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                  if (_model.infoIos != null && _model.infoIos != '')
                    Text(
                      _model.infoIos!,
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
