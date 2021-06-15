import 'package:blood_preassure_app/state/get/get_register_controller.dart';
import 'package:get/get.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<GetxRegisterController>(GetxRegisterController());
  }
}
