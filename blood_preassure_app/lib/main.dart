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
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
