import 'package:get/get.dart';
import 'package:getx_basic_101/app/modules/rest_api_implement/providers/note_provider.dart';

import '../controllers/rest_api_implement_controller.dart';

class RestApiImplementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RestApiImplementController>(
      () => RestApiImplementController(),
    );
    // Get.lazyPut<NoteProvider>(
    //   () => NoteProvider(),
    // );
  }
}
