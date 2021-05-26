import 'package:blood_preassure_app/ui/ui.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

class GetxMeasuresController extends GetxController {
  final _measures = Rx<List<Measures>>([]);

  Future<void> fetch() async {
    try {
      var response = await Dio().get('http://192.168.1.8:8000/api/hello');
      var data = response.data['data'] as List;

      data.forEach((element) {
        print(element);
        _measures.value.add(Measures(
          syst: element['syst'],
          date: DateTime.parse(element['date']),
        ));
      });

      print(_measures.value.length);
    } catch (e) {
      print(e);
    }
  }
}

class Measures {
  final int syst;
  final DateTime date;

  Measures({this.syst, this.date});
}
