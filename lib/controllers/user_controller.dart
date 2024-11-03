import 'package:iptv_mobile/repositories/user_repository.dart';

class UserController {
  final userRepository = UserRepository();

  static UserController instance = UserController();

  Future<bool> auth(userCodeRequest, passwordRequest) async {
    return await userRepository.authUser(userCodeRequest, passwordRequest);
  }
}
