import 'package:printful/printful.dart';
import 'package:retrofit/retrofit.dart';

mixin MixinOrder {
  @GET('/orders')
  Future<PrintfulResponse<List<Order>>> getListOfOrders(
    @Query('status') String status,
    @Query('offset') int offset,
    @Query('limit') int limit,
  );

  @POST('/orders')
  Future<PrintfulResponse<Order>> createANewOrder(
    @Body() ModifierOrder modifierOrder,
    @Query('confirm') bool confirm,
    @Query('update_existing') bool updateExisting,
  );

  @GET('/orders/{id}')
  Future<PrintfulResponse<Order>> getOrderData(@Path('id') dynamic id);

  @DELETE('/orders/{id}')
  Future<PrintfulResponse<Order>> cancelAnOrder(@Path('id') dynamic id);

  @PUT('/orders/{id}')
  Future<PrintfulResponse<Order>> updateOrderData(
    @Path('id') dynamic id,
    @Query('confirm') bool confirm,
    @Body() ModifierOrder modifierOrder,
  );

  @POST('/orders/{id}/confirm')
  Future<PrintfulResponse<Order>> confirmDraftForFulfillment(
    @Path('id') dynamic id,
  );

  @POST('/orders/estimate-costs')
  Future<PrintfulResponse<Order>> estimateOrderCosts(
    @Body() ModifierOrder modifierOrder,
  );
}
