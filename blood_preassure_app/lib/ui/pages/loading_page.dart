import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

import '../ui.dart';

class LoadingPage extends StatelessWidget {
  static String pageName = 'loading-page';

  Future<void> loading(BuildContext context) async {
    final FlutterSecureStorage storage = FlutterSecureStorage();

    await Future.delayed(Duration(seconds: 3), () {
      var token = storage.read(key: 'token');

      if (token == null) {
        Get.to(() => LoginPage(), binding: LoginBinding());
      } else {
        Navigator.of(context).pushReplacementNamed(HomePage.pageName);
      }
    });
  }

  Widget buildLoading() => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 15),
              Text('loading...'),
            ],
          ),
        ),
      );

  Widget buildError() => Container(
        child: Center(
          child: Icon(
            Icons.error_outline,
            size: 48,
            color: Colors.red,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: loading(context),
      initialData: true,
      builder: (context, snapshot) {
        if (snapshot.hasError)
          return Container(
            child: Center(
              child: Text('Error'),
            ),
          );

        return buildLoading();

        // return buildLoading();
      },
    );

    // return _isLoading
    //     ? buildLoading()
    //     : Navigator.of(context).pushReplacementNamed(HomePage.pageName);
  }
}
