import 'package:get/get.dart';
import 'package:getx_basic_101/app/utils/url_base.dart';

class NoteProvider extends GetConnect {
  getNote() async {
    final response = await get(ApiEndpoints.authEndPoints.getNoteUrl);
    return response.body;
    print(response.body);
  }

  addNote({required String title, required String content}) async {
    final response = await post(ApiEndpoints.authEndPoints.getNoteUrl,
        {"title": title, "content": content});
    print(response.body);
  }

  deleteNote(int id) async {
    final response = await delete(
        '${ApiEndpoints.baseDatabaseUrl}apikey=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InR6dWZza211a3N0eWJiaWFieGlvIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzIzMjMwMTAsImV4cCI6MTk4Nzg5OTAxMH0.l_cyVviXhSJAY6GB3Kk0dDdXux5gr0ajm6vNstIcQfI&id=eq.$id');
    print(response.body);
  }

  updateNote({required String content, required int id}) async {
    final response = await patch(
        '${ApiEndpoints.baseDatabaseUrl}apikey=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InR6dWZza211a3N0eWJiaWFieGlvIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzIzMjMwMTAsImV4cCI6MTk4Nzg5OTAxMH0.l_cyVviXhSJAY6GB3Kk0dDdXux5gr0ajm6vNstIcQfI&id=eq.$id',
        {"content": content});
    print(response.body);
  }

  @override
  void onInit() {}
}
