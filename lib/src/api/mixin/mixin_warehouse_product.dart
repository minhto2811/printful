import 'package:printful/src/models/warehouse_product/warehouse_product.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/response/printful_response.dart';

mixin MixinWarehouseProduct {
  @GET('/warehouse/products')
  Future<PrintfulResponse<List<WarehouseProduct>>> getAListOfYourWarehouseProducts(
    @Query('query') String query,
    @Query('limit') int limit,
    @Query('offset') int offset,
  );

  @GET('/warehouse/products/{id}')
  Future<PrintfulResponse<WarehouseProduct>> getWarehouseProductData(
    @Path('id') int id,
  );
}
