import 'package:teslo_shop/features/auth/domain/entities/user.dart';

abstract class AuthDataSource {
  Future<User> login(String email, String password);
  Future<User> register(String email, String password, String userName);
  Future<User> checkAuthStatus(String token);
}
