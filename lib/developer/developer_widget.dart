import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeveloperWidget extends StatefulWidget {
  const DeveloperWidget({Key key}) : super(key: key);

  @override
  _DeveloperWidgetState createState() => _DeveloperWidgetState();
}

class _DeveloperWidgetState extends State<DeveloperWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: Stack(
            children: [
              FlutterFlowWebView(
                url: 'https://taimoorsiddiqui.com',
                bypass: false,
                verticalScroll: false,
                horizontalScroll: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
