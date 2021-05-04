import 'package:flutter/material.dart';

import 'ui/pages/pages.dart';
import 'utils/utils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blood Preassure App',
      theme: ThemeData(
        primarySwatch: AppColors.blue,
      ),
      initialRoute: LoadingPage.pageName,
      routes: {
        '/': (context) => HomePage(),
        MyTrendsPage.pageName: (context) => MyTrendsPage(),
        SignupPage.pageName: (context) => SignupPage(),
        HomeTestPage.pageName: (context) => HomeTestPage(),
        LoadingPage.pageName: (context) => LoadingPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
