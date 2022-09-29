import '../controller/bookmark_controller.dart';
import 'package:get/get.dart';

class BookmarkBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookmarkController());
  }
}
