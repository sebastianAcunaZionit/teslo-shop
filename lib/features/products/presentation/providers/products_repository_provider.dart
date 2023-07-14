import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:teslo_shop/features/auth/presentation/providers/auth_provider.dart';
import 'package:teslo_shop/features/products/domain/domain.dart';
import 'package:teslo_shop/features/products/infrastructure/infrastructure.dart';

final productsRepositoryProvider = Provider<ProductsRepository>((ref) {
  final accesToken = ref.watch(authProvider).user?.token ?? '';

  final productsRepository =
      ProductsRepositoryImpl(ProductsDatasourceImpl(accessToken: accesToken));

  return productsRepository;
});
