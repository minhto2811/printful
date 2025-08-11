import 'package:printful/src/models/product_template/product_template.dart';
import 'package:printful/src/models/response/printful_response.dart';
import 'package:retrofit/http.dart';

mixin MixinProductTemplate {
  @GET('/product-templates')
  Future<PrintfulResponse<ProductTemplate>> getProductTemplateList(
    @Query("offset") int offset,
    @Query("limit") int limit,
  );

  @GET('/product-templates/{id}')
  Future<PrintfulResponse<ProductTemplate>> getProductTemplate(
    @Path('id') int id,
  );

  @DELETE('/product-templates/{id}')
  Future<PrintfulResponse<bool>> deleteProductTemplate(@Path('id') int id);
}
