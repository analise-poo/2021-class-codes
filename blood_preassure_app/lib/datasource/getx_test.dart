import 'package:blood_preassure_app/models/measure.dart';
import 'package:get/get.dart';

class GetxTest extends GetxController {
  final measures = Rx<List<Measure>>([]);
  final newMeasures = <Measure>[].obs;
  final count = Rx<int>(0);

  int get counter => measures.value.length;

  void add() {
    measures.value
        .add(Measure(date: DateTime.now().add(Duration(hours: 4)), value: 99));
    newMeasures
        .add(Measure(date: DateTime.now().add(Duration(hours: 4)), value: 99));
    count.value++;
  }

  void minus() {
    measures.value.removeAt(0);
    newMeasures.removeAt(0);
    count.value--;
  }
}
