import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:t_soul/welcome/welcome_widget.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page/home_page_widget.dart';
import 'developer/developer_widget.dart';
import 'my_account/my_account_widget.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool displaySplashImage = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration(seconds: 1), () => setState(() => displaySplashImage = false));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TSoul',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en', '')],
      theme: ThemeData(primarySwatch: Colors.blue),
      home: displaySplashImage
          ? Container(
              color: Colors.transparent,
              child: Center(
                child: Builder(
                  builder: (context) => Image.asset(
                    'assets/images/821ffe1e07af7240ee78edb5b6d59408.png',
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          : NavBarPage(),
    );
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({Key key, this.initialPage}) : super(key: key);

  final String initialPage;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPage = 'HomePage';

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage ?? _currentPage;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'HomePage': HomePageWidget(),
      'Developer': DeveloperWidget(),
      'MyAccount': MyAccountWidget(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPage);
    return Scaffold(
      body: tabs[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() => _currentPage = tabs.keys.toList()[i]),
        backgroundColor: Color(0xB7000000),
        selectedItemColor: Color(0xFFFF1100),
        unselectedItemColor: Color(0xFFFF1100),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 50,
            ),
            label: 'Home',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.developer_mode,
              size: 50,
            ),
            label: 'Developer Portfolio',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              size: 50,
            ),
            label: 'Account',
            tooltip: '',
          )
        ],
      ),
    );
  }
}
