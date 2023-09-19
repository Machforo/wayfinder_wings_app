import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'geo_track1_model.dart';
export 'geo_track1_model.dart';

class GeoTrack1Widget extends StatefulWidget {
  const GeoTrack1Widget({Key? key}) : super(key: key);

  @override
  _GeoTrack1WidgetState createState() => _GeoTrack1WidgetState();
}

class _GeoTrack1WidgetState extends State<GeoTrack1Widget> {
  late GeoTrack1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GeoTrack1Model());
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
            'GEO TRACK',
            style: FlutterFlowTheme.of(context).displayLarge,
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
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/geotrack_3.jpg',
                  width: 1038,
                  height: 1371,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.06, -0.11),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(13, 0, 13, 0),
                  child: Text(
                    'Your location is being made \navailable.....\nStay calm and hold tight while we send help',
                    style: FlutterFlowTheme.of(context).headlineLarge,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
