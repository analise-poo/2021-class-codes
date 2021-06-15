import 'package:blood_preassure_app/datasource/getx_test.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TrendTestPage extends StatelessWidget {
  static String pageName = 'test-trends-page';

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GetxTest>(
      init: GetxTest(),
      builder: (controller) => Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.plus_one_rounded),
              onPressed: () => controller.add(),
            ),
            IconButton(
              icon: Icon(Icons.exposure_minus_1),
              onPressed: () => controller.minus(),
            )
          ],
        ),
        body: Container(
          color: Colors.grey[100],
          child: Column(
            children: [
              Center(
                child: Obx(
                  () => Text(
                    '${controller.measures.value.length}',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
              ),
              Center(
                child: GetX<GetxTest>(
                  builder: (controller) => Text(
                    '${controller.count.value}',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
              ),
              Obx(
                () => Text(
                  '${controller.newMeasures.length}',
                  style: TextStyle(fontSize: 48),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
