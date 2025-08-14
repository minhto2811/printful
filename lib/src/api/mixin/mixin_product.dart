import 'package:printful/src/models/request/modifier_sync_product.dart';
import 'package:printful/src/models/request/modifier_sync_variant.dart';
import 'package:printful/src/models/response/printful_response.dart';
import 'package:printful/src/models/sync_product/sync_product.dart';
import 'package:printful/src/models/sync_product/sync_product_info.dart';
import 'package:printful/src/models/sync_product/sync_variant.dart';
import 'package:retrofit/retrofit.dart';

mixin MixinProduct {
  @POST('/store/products')
  Future<PrintfulResponse<SyncProduct>> createANewSyncProduct(
    @Body() ModifierSyncProduct modifierSyncProduct,
  );

  @GET('/store/products')
  Future<PrintfulResponse<List<SyncProduct>>> getSyncProducts(
    @Query('status') String? status,
    @Query('category_id') String? categoryId,
  );

  @GET('/store/products/{id}')
  Future<PrintfulResponse<SyncProductInfo>> getASyncProduct(
    @Path('id') dynamic id,
  );

  @DELETE('/store/products/{id}')
  Future<PrintfulResponse<SyncProductInfo>> deleteASyncProduct(
    @Query('id') dynamic id,
  );

  @PUT('/store/products/{id}')
  Future<PrintfulResponse<SyncProduct>> modifyASyncProduct(
    @Path('id') dynamic id,
    @Body() ModifierSyncProduct modifierSyncProduct,
  );

  @GET('/store/variants/{id}')
  Future<PrintfulResponse<SyncVariant>> getASyncVariant(@Path('id') dynamic id);

  @DELETE('/store/variants/{id}')
  Future<PrintfulResponse<SyncVariant>> deleteASyncVariant(
    @Path('id') dynamic id,
  );

  @PUT('/store/variants/{id}')
  Future<PrintfulResponse<SyncProduct>> modifyASyncVariant(
    @Path('id') dynamic id,
    @Body() ModifierSyncVariant modifierSyncVariant,
  );

  @POST('/store/products/{id}/variants')
  Future<PrintfulResponse<SyncVariant>> createANewSyncVariant(
    @Path('id') dynamic id,
    @Body() ModifierSyncVariant modifierSyncVariant,
  );
}
