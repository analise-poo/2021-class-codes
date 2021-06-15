import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ui/pages/bindings/bindings.dart';
import 'ui/pages/pages.dart';
import 'ui/pages/trend_test_page.dart';
import 'utils/utils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Blood Preassure App',
      theme: ThemeData(
        primarySwatch: AppColors.blue,
      ),
      initialRoute: LoadingPage.pageName,
      // routes: {
      //   '/': (context) => HomePage(),
      //   MyTrendsPage.pageName: (context) => MyTrendsPage(),
      //   SignupPage.pageName: (context) => SignupPage(),
      //   HomeTestPage.pageName: (context) => HomeTestPage(),
      //   LoadingPage.pageName: (context) => LoadingPage(),
      // },
      getPages: [
        GetPage(
          name: HomePage.pageName,
          page: () => HomePage(),
          binding: HomePageBinding(),
        ),
        GetPage(
          name: LoginPage.pageName,
          page: () => LoginPage(),
          binding: LoginBinding(),
        ),
        GetPage(
          name: RegisterPage.pageName,
          page: () => RegisterPage(),
          binding: RegisterBinding(),
        ),
        GetPage(
          name: MyTrendsPage.pageName,
          page: () => MyTrendsPage(),
          binding: MyTrendsBinding(),
        ),
        GetPage(
          name: TrendTestPage.pageName,
          page: () => TrendTestPage(),
        ),
        GetPage(
          name: SignupPage.pageName,
          page: () => SignupPage(),
        ),
        GetPage(
          name: HomeTestPage.pageName,
          page: () => HomeTestPage(),
        ),
        GetPage(
          name: LoadingPage.pageName,
          page: () => LoadingPage(),
          binding: HomePageBinding(),
        ),
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}
