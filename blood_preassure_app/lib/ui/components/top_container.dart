import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../../utils/utils.dart';

class TopContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blue,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .25,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Feather.activity,
              color: Colors.white,
            ),
            Text(
              'My target',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              '120/80',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
