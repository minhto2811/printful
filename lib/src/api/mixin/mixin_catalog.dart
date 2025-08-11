import 'package:printful/src/models/catalog/category.dart';
import 'package:printful/src/models/catalog/product.dart';
import 'package:printful/src/models/catalog/product_info.dart';
import 'package:printful/src/models/catalog/product_size_guide.dart';
import 'package:printful/src/models/catalog/variant_info.dart';
import 'package:printful/src/models/response/printful_response.dart';
import 'package:retrofit/retrofit.dart';

mixin MixinCatalog {
  @GET('/products')
  Future<PrintfulResponse<List<Product>>> getProducts();

  @GET('/products/variant/{id}')
  Future<PrintfulResponse<VariantInfo>> getVariant(@Path('id') int id);

  @GET('/products/{id}')
  Future<PrintfulResponse<ProductInfo>> getProduct(@Path('id') int id);

  @GET('/products/{id}/sizes')
  Future<PrintfulResponse<ProductSizeGuide>> getProductSizeGuide(
    @Path('id') int id,
  );

  @GET('/categories')
  Future<PrintfulResponse<List<Category>>> getCategories();

  @GET('/categories/{id}')
  Future<PrintfulResponse<List<Category>>> getCategory(@Path('id') int id);
}
