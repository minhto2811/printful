import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:printful/src/api/client.dart';
import 'package:printful/src/api/interceptor.dart';
import 'package:printful/src/repository/catalog_repository.dart';
import 'package:printful/src/repository/country_repository.dart';
import 'package:printful/src/repository/file_library.dart';
import 'package:printful/src/repository/oauth_repository.dart';
import 'package:printful/src/repository/order_repository.dart';
import 'package:printful/src/repository/product_repository.dart';
import 'package:printful/src/repository/product_template_repository.dart';
import 'package:printful/src/repository/shipping_rate_repository.dart';
import 'package:printful/src/repository/tax_rate_repository.dart';
import 'package:printful/src/services/token_manager.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton<FlutterSecureStorage>(
    () => FlutterSecureStorage(),
  );
  getIt.registerLazySingleton<TokenManager>(() => TokenManagerImpl(getIt()));
  getIt.registerLazySingleton<PrintfulInterceptor>(
    () => PrintfulInterceptor(getIt()),
  );
  getIt.registerLazySingleton<Dio>(
    () => Dio(
      BaseOptions(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    )..interceptors.add(getIt<PrintfulInterceptor>()),
  );
  getIt.registerLazySingleton<PrintfulClient>(() => PrintfulClient(getIt()));
  getIt.registerLazySingleton<OrderRepository>(
    () => OrderRepositoryImpl(getIt()),
  );
  getIt.registerLazySingleton<CatalogRepository>(
    () => CatalogRepositoryImpl(getIt()),
  );
  getIt.registerLazySingleton<ProductRepository>(
    () => ProductRepositoryImpl(getIt()),
  );
  getIt.registerLazySingleton<ProductTemplateRepository>(
    () => ProductTemplateRepositoryImpl(getIt()),
  );
  getIt.registerLazySingleton<OauthRepository>(
    () => OauthRepositoryImpl(getIt(), getIt()),
  );
  getIt.registerLazySingleton<FileLibraryRepository>(
    () => FileLibraryRepositoryImpl(getIt()),
  );
  getIt.registerLazySingleton<ShippingRateRepository>(
    () => ShippingRateRepositoryImpl(getIt()),
  );
  getIt.registerLazySingleton<CountryRepository>(
    () => CountryRepositoryImpl(getIt()),
  );
  getIt.registerLazySingleton<TaxRateRepository>(
    () => TaxRateRepositoryImpl(getIt()),
  );
}
