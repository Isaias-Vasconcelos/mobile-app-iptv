import 'package:dio/dio.dart';

class Api {
  static Api instance = Api();

  //localhost não funciona no emulador android ent tem que ser 10.0.2.2
  final Dio dio = Dio(BaseOptions(baseUrl: "http://10.0.2.2:8080"));
}
