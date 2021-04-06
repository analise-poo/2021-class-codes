import 'package:flutter/material.dart';

import 'package:flutter_icons/flutter_icons.dart';

import '../components/components.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          backgroundColor: Colors.orange,
        ),
        actions: [
          IconButton(icon: Icon(FontAwesome5Solid.equals), onPressed: null)
        ],
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TopContainer(),
        ],
      ),
    );
  }
}
