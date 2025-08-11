import 'package:printful/src/api/client.dart';
import 'package:printful/src/models/catalog/category.dart';
import 'package:printful/src/models/response/printful_response.dart';
import 'package:printful/src/models/catalog/product.dart';
import 'package:printful/src/models/catalog/product_info.dart';
import 'package:printful/src/models/catalog/product_size_guide.dart';
import 'package:printful/src/models/catalog/variant_info.dart';

abstract class CatalogRepository {
  Future<PrintfulResponse<List<Product>>> getProducts();

  Future<PrintfulResponse<VariantInfo>> getVariant({required int id});

  Future<PrintfulResponse<ProductInfo>> getProduct({required int id});

  Future<PrintfulResponse<ProductSizeGuide>> getProductSizeGuide({
    required int id,
  });

  Future<PrintfulResponse<List<Category>>> getCategories();

  Future<PrintfulResponse<List<Category>>> getCategory({required int id});
}

class CatalogRepositoryImpl implements CatalogRepository {
  final PrintfulClient _client;

  CatalogRepositoryImpl(this._client);

  @override
  Future<PrintfulResponse<List<Product>>> getProducts() =>
      _client.getProducts();

  @override
  Future<PrintfulResponse<VariantInfo>> getVariant({required int id}) =>
      _client.getVariant(id);

  @override
  Future<PrintfulResponse<ProductInfo>> getProduct({required int id}) =>
      _client.getProduct(id);

  @override
  Future<PrintfulResponse<ProductSizeGuide>> getProductSizeGuide({
    required int id,
  }) => _client.getProductSizeGuide(id);

  @override
  Future<PrintfulResponse<List<Category>>> getCategories() =>
      _client.getCategories();

  @override
  Future<PrintfulResponse<List<Category>>> getCategory({required int id}) =>
      _client.getCategory(id);
}
