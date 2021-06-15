import 'package:blood_preassure_app/models/measure.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

class GetxMeasuresController extends GetxController {
  final measures = <Measure>[].obs;
  final count1 = Rx<int>(0);
  final count2 = 0.obs;
  int get sum => count1.value + count2.value;
  // List<Measure> get measures => _measures.value;
  int get length => measures.length;

  Future<void> fetch() async {
    try {
      var response =
          await Dio().get('https://dry-caverns-11135.herokuapp.com/api/hello');
      var data = response.data['data'] as List;

      data.forEach((element) {
        print(element);
        measures.add(Measure(
          value: element['syst'],
          date: DateTime.parse(element['date']),
        ));
      });
    } catch (e) {
      print(e);
    }
  }
}
