import 'package:dio/dio.dart';
import 'package:todo_app/data/providers/config.dart';

Future<Response<dynamic>> getApplicationsPV() async {
  print('KKKKKKKKK');
  try {
    var response = await dio.get('/application');

    print(response);
    return response;
  } on DioError catch (error) {
    String message = error.response?.data['message'];
    throw message;
  }
}
