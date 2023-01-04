import 'package:get/get.dart';
import 'package:getx_basic_101/app/modules/rest_api_implement/providers/note_provider.dart';
import 'package:getx_basic_101/app/modules/rest_api_implement/views/rest_api_implement_view.dart';

class RestApiImplementController extends GetxController {
  final provider = Get.find<NoteProvider>();
  var notes = [].obs;
  var loading = false.obs;

  @override
  void onInit() {
    super.onInit();
    getData();
  }

  getData() async {
    loading(true);
    notes(await provider.getNote());
    loading(false);
  }

  addData({required String title, required String content}) async {
    provider.addNote(title: title, content: content);
  }

  deleteData(int id) async {
    provider.deleteNote(id);
  }

  updateData({required String content, required int id}) async {
    provider.updateNote(content: content, id: id);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
