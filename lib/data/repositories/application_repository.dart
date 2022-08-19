import 'package:todo_app/data/providers/application/get_applications.dart';

class ApplicationRepository {
  Future<List> getApplicationsRP() async {
    var response = await getApplicationsPV();

    return response.data['data']['result'];
  }
}
