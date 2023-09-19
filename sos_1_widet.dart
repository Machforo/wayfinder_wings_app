import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'so_s_continued1_model.dart';
export 'so_s_continued1_model.dart';

class SoSContinued1Widget extends StatefulWidget {
  const SoSContinued1Widget({Key? key}) : super(key: key);

  @override
  _SoSContinued1WidgetState createState() => _SoSContinued1WidgetState();
}

class _SoSContinued1WidgetState extends State<SoSContinued1Widget> {
  late SoSContinued1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SoSContinued1Model());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Wayfinder Wings',
            style: FlutterFlowTheme.of(context).headlineLarge,
          ),
          actions: [],
          flexibleSpace: FlexibleSpaceBar(
            background: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/images/geotrack_2.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          centerTitle: false,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(13, 13, 13, 13),
                child: Text(
                  'YOUR TEXT HAS BEEN SENT SUCCESFULLY',
                  style: FlutterFlowTheme.of(context).headlineLarge,
                ),
              ),

              // '''
              // navigate back to sos 1
              // ''''
              FlutterFlowIconButton(
                borderColor: FlutterFlowTheme.of(context).primary,
                borderRadius: 20,
                borderWidth: 1,
                buttonSize: 143,
                fillColor: FlutterFlowTheme.of(context).tertiary400,
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: FlutterFlowTheme.of(context).black600,
                  size: 100,
                ),
                onPressed: () async {
                  context.safePop();
                },
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/sos_1.jpg',
                  width: 1102,
                  height: 1265,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

