import 'package:teslo_shop/features/auth/domain/domain.dart';
import 'package:teslo_shop/features/auth/infrastructure/infrastructure.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthDataSource authDatasource;

  AuthRepositoryImpl({AuthDataSource? datasource})
      : authDatasource = datasource ?? AuthDatasourceImpl();

  @override
  Future<User> checkAuthStatus(String token) async {
    return await authDatasource.checkAuthStatus(token);
  }

  @override
  Future<User> login(String email, String password) async {
    return await authDatasource.login(email, password);
  }

  @override
  Future<User> register(String email, String password, String userName) async {
    return await authDatasource.register(email, password, userName);
  }
}
