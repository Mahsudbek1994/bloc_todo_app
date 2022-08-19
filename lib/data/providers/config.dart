import 'package:dio/dio.dart';

String baseUrl = 'https://nefrit.edu-me.uz';

var options = BaseOptions(
  baseUrl: '$baseUrl/api',
  contentType: 'application/json',
  headers: {
    'Accept': 'application/json',
    'Authorization': 'Bearer 58|B0yVrG6UGloAVqxeeeLcy91mqVPMl9FYYoj8mcEv'
  },
);
Dio dio = Dio(options);

// Dio dio = Dio(options)
//   ..interceptors.add(InterceptorsWrapper(onError: (DioError e, handler) async {
//     if (e.response!.statusCode == 401) {
//       await TokenRepository().removeToken();
//       Restart.restartApp();
//     }

//     return handler.next(e);
//   }));

