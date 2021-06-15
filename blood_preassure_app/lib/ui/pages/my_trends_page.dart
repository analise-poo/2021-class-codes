import 'dart:math';

import 'package:blood_preassure_app/datasource/getx_measures_controller.dart';
import 'package:blood_preassure_app/models/models.dart';
import 'package:blood_preassure_app/ui/components/measure_card.dart';
import 'package:blood_preassure_app/utils/utils.dart';
import 'package:charts_painter/chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyTrendsPage extends StatelessWidget {
  static String pageName = 'my-trends-page';
  final GetxMeasuresController controller = Get.find<GetxMeasuresController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.grey[50],
      //   elevation: 0,
      //   title: Text(
      //     'My Trends',
      //     style: TextStyle(color: Colors.grey),
      //   ),
      //   centerTitle: true,
      //   leading: IconButton(
      //     icon: Icon(
      //       Icons.arrow_back,
      //       color: AppColors.blue,
      //     ),
      //     onPressed: () => Navigator.pop(context),
      //   ),u
      // ),
      body: RefreshIndicator(
        onRefresh: controller.fetch,
        child: FutureBuilder(
          future: controller.fetch(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(
                  strokeWidth: 5,
                ),
              );
            }
            return SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: AppColors.blue,
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                        Text(
                          'My Trends',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Expanded(child: SizedBox()),
                        Obx(() => Text('${controller.length}')),
                        IconButton(
                          icon: Icon(
                            Icons.refresh,
                            color: AppColors.blue,
                          ),
                          onPressed: () async => await controller.fetch(),
                        ),
                      ],
                    ),
                    Obx(() {
                      if (controller.length < 1) {
                        return Center(
                          child: Text('Não há medidas'),
                        );
                      }
                      return Container(
                        height: ((controller.length + 1) * 85.0),
                        child: ListView(
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                            ListTile(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 6, horizontal: 30),
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [Text('Date'), Text('Time')],
                              ),
                              leading: Text('Nr'),
                              trailing: Text('Syst'),
                            ),
                            ...controller.measures
                                .map((e) => MeasureCard(
                                      measure: e,
                                    ))
                                .toList(),
                          ],
                        ),
                      );
                    }),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}


// Referência de como usar o ListView.builder
//  Container(
                  //   height: 1000,
                  //   child: ListView.builder(
                  //     itemCount: measures.length + 1,
                  //     physics: NeverScrollableScrollPhysics(),
                  //     itemBuilder: (context, index) {
                  //       if (index == 0) {
                  //         return ListTile(
                  //           contentPadding:
                  //               EdgeInsets.symmetric(vertical: 6, horizontal: 30),
                  //           title: Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //             children: [Text('Date'), Text('Time')],
                  //           ),
                  //           leading: Text('Nr'),
                  //           trailing: Text('Syst'),
                  //         );
                  //       }
                  //       Measure measure = measures[index - 1];
                  //       return MeasureCard(
                  //         date: measure.date,
                  //         value: measure.value,
                  //         index: index,
                  //       );
                  //     },
                  //   ),
                  // ),