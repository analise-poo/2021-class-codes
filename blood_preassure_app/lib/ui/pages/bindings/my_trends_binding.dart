import 'package:blood_preassure_app/datasource/getx_measures_controller.dart';
import 'package:get/get.dart';

class MyTrendsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<GetxMeasuresController>(GetxMeasuresController());
  }
}
