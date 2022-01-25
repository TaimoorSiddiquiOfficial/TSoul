import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAccountWidget extends StatefulWidget {
  const MyAccountWidget({Key key}) : super(key: key);

  @override
  _MyAccountWidgetState createState() => _MyAccountWidgetState();
}

class _MyAccountWidgetState extends State<MyAccountWidget> {
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
                url: 'https://music.taimoorsiddiqui.com/login',
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
