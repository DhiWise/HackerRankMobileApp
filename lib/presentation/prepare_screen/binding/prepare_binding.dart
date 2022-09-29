import '../controller/prepare_controller.dart';
import 'package:get/get.dart';

class PrepareBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PrepareController());
  }
}
