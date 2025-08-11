// ignore_for_file: non_constant_identifier_names

import 'package:dio/dio.dart';
import 'package:printful/src/repository/oauth_repository.dart';
import 'package:printful/src/repository/order_repository.dart';
import 'package:printful/src/repository/catalog_repository.dart';
import 'package:printful/src/repository/product_repository.dart';

import 'di/injection.dart';
import 'repository/country_repository.dart';
import 'repository/file_library.dart';
import 'repository/product_template_repository.dart';
import 'repository/shipping_rate_repository.dart';
import 'repository/tax_rate_repository.dart';

class Printful {
  static Printful? _instance;

  static Printful get instance => _instance ??= Printful._internal();

  Printful._internal() {
    setup();
  }

  /// Set Private key for account level token
  void setBearerToken({required String token}) {
    getIt<Dio>().options.headers['Authorization'] = 'Bearer $token';
  }

  ///Use this to specify which store you want to use (required only for
  ///account level token).
  ///The store IDs can be retrieved with the Get basic information about
  ///stores endpoint.
  void setHeaderStoreId({required String storeId}) {
    getIt<Dio>().options.headers['X-PF-Store-Id'] = storeId;
  }

  late final OAUTH_API = getIt<OauthRepository>();
  late final ORDER_API = getIt<OrderRepository>();
  late final CATALOG_API = getIt<CatalogRepository>();
  late final PRODUCT_API = getIt<ProductRepository>();
  late final PRODUCT_TEMPLATE_API = getIt<ProductTemplateRepository>();
  late final FILE_LIBRARY_API = getIt<FileLibraryRepository>();
  late final SHIPPING_RATE_API = getIt<ShippingRateRepository>();
  late final COUNTRY_API = getIt<CountryRepository>();
  late final TAX_RATE_API = getIt<TaxRateRepository>();
}
