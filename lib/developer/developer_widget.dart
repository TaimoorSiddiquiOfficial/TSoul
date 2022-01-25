import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_web_view.dart';
import '../home_page/home_page_widget.dart';
import '../my_account/my_account_widget.dart';
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
            border: Border.all(
              color: Color(0xFFFF1100),
            ),
          ),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 60),
                child: FlutterFlowWebView(
                  url: 'https://taimoorsiddiqui.com',
                  bypass: false,
                  verticalScroll: false,
                  horizontalScroll: false,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                                reverseDuration: Duration(milliseconds: 0),
                                child: HomePageWidget(),
                              ),
                            );
                          },
                          child: Icon(
                            Icons.house_rounded,
                            color: Colors.white,
                            size: 50,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.leftToRight,
                              duration: Duration(milliseconds: 300),
                              reverseDuration: Duration(milliseconds: 300),
                              child: DeveloperWidget(),
                            ),
                          );
                        },
                        child: Icon(
                          Icons.developer_mode_outlined,
                          color: Color(0xFFFF1100),
                          size: 50,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.leftToRight,
                              duration: Duration(milliseconds: 300),
                              reverseDuration: Duration(milliseconds: 300),
                              child: MyAccountWidget(),
                            ),
                          );
                        },
                        child: Icon(
                          Icons.account_circle_rounded,
                          color: Color(0xFFFF1100),
                          size: 50,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
