import 'package:iptv_mobile/http/api.dart';
import 'package:localstore/localstore.dart';

class UserRepository {
  final api = Api();
  final localStorage = Localstore.instance;

  Future<bool> authUser(userCodeRequest, passwordRequest) async {
    try {
      final response = await Api.instance.dio.post("/api/v1/Auth",
          data: {"userCode": userCodeRequest, "password": passwordRequest});

      if (response.statusCode == 200) {
        print(response.data);
        localStorage.collection("auth").doc().set({"token": response.data});
        return true;
      }

      print(response);
      return false;
    } catch (e) {
      print("API ERROR: $e");
      return false;
    }
  }
}
