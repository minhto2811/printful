import 'package:printful/src/api/client.dart';
import 'package:printful/src/models/order/order.dart';
import 'package:printful/src/models/request/modifier_order.dart';
import 'package:printful/src/models/response/printful_response.dart';

import '../models/order/order_status.dart';

abstract interface class OrderRepository {
  ///Authorizations:OAuth.
  ///Required [X-PF-Store-Id] use method [Printful.instance.setHeaderStoreId].
  ///[limit] max 100
  /// Order status description
  ///
  /// draft     - The order is created but not yet submitted for fulfillment.
  ///             You can still edit it and confirm later.
  ///
  /// pending   - The order has been submitted but not yet accepted for fulfillment.
  ///             You can still cancel if needed.
  ///
  /// failed    - The order was returned for review due to an error
  ///             (invalid address, missing print files, payment failed, etc.).
  ///
  /// canceled  - The order has been canceled and cannot be processed anymore.
  ///             If charged, the amount was refunded to your credit card.
  ///
  /// inprocess - The order is being fulfilled and cannot be canceled or modified.
  ///             Contact support if issues occur at this stage.
  ///
  /// onhold    - The order has encountered a fulfillment problem and
  ///             requires resolution with Printful customer service.
  ///
  /// partial   - The order is partially fulfilled (some items shipped, others pending).
  ///
  /// fulfilled - All items have been shipped successfully.
  ///
  /// archived  - The order has been archived and hidden from the UI.
  Future<PrintfulResponse<List<Order>>> getListOfOrders({
    required OrderStatus status,
    required int offset,
    required int limit,
  });

  ///Authorizations:OAuth.
  ///Required [X-PF-Store-Id] use method [Printful.instance.setHeaderStoreId].
  ///Use this to specify which store you want to use (required only for account level token).
  ///The store IDs can be retrieved with the Get basic information about stores endpoint.
  ///[confirm] Automatically submit the newly created order for fulfillment (skip the Draft phase)
  ///[updateExisting] Try to update existing order if an order with the specified external_id already exists
  Future<PrintfulResponse<Order>> createANewOrder({
    required bool confirm,
    required bool updateExisting,
    required ModifierOrder modifierOrder,
  });

  ///Authorizations:OAuth.
  ///Required [X-PF-Store-Id] use method [Printful.instance.setHeaderStoreId].
  ///Use this to specify which store you want to use (required only for account level token).
  ///The store IDs can be retrieved with the Get basic information about stores endpoint.
  ///[id] Order ID (integer) or External ID (if prefixed with @)
  Future<PrintfulResponse<Order>> getOrderData({required dynamic id});

  ///Authorizations:OAuth.
  ///Required [X-PF-Store-Id] use method [Printful.instance.setHeaderStoreId].
  ///Use this to specify which store you want to use (required only for account level token).
  ///The store IDs can be retrieved with the Get basic information about stores endpoint.
  ///[id] Order ID (integer) or External ID (if prefixed with @)
  Future<PrintfulResponse<Order>> cancelAnOrder({required dynamic id});

  ///Authorizations:OAuth.
  ///Required [X-PF-Store-Id] use method [Printful.instance.setHeaderStoreId].
  ///Use this to specify which store you want to use (required only for account level token).
  ///The store IDs can be retrieved with the Get basic information about stores endpoint.
  ///[id] Order ID (integer) or External ID (if prefixed with @)
  ///[confirm] Automatically submit the newly created order for fulfillment (skip the Draft phase)
  Future<PrintfulResponse<Order>> updateOrderData({
    required dynamic id,
    required bool confirm,
    required ModifierOrder modifierOrder,
  });

  ///Authorizations:OAuth.
  ///Required [X-PF-Store-Id] use method [Printful.instance.setHeaderStoreId].
  ///Use this to specify which store you want to use (required only for account level token).
  ///The store IDs can be retrieved with the Get basic information about stores endpoint.
  ///[id] Order ID (integer) or External ID (if prefixed with @)
  Future<PrintfulResponse<Order>> confirmDraftForFulfillment({
    required dynamic id,
  });

  ///Authorizations:OAuth.
  ///Required [X-PF-Store-Id] use method [Printful.instance.setHeaderStoreId].
  ///Use this to specify which store you want to use (required only for account level token).
  Future<PrintfulResponse<Order>> estimateOrderCosts({
    required ModifierOrder modifierOrder,
  });
}

class OrderRepositoryImpl implements OrderRepository {
  final PrintfulClient _client;

  OrderRepositoryImpl(this._client);

  @override
  Future<PrintfulResponse<Order>> createANewOrder({
    required bool confirm,
    required bool updateExisting,
    required ModifierOrder modifierOrder,
  }) => _client.createANewOrder(modifierOrder, confirm, updateExisting);

  @override
  Future<PrintfulResponse<List<Order>>> getListOfOrders({
    required OrderStatus status,
    required int offset,
    required int limit,
  }) => _client.getListOfOrders(status.name, offset, limit);

  @override
  Future<PrintfulResponse<Order>> getOrderData({required dynamic id}) =>
      _client.getOrderData(id);

  @override
  Future<PrintfulResponse<Order>> cancelAnOrder({required dynamic id}) =>
      _client.cancelAnOrder(id);

  @override
  Future<PrintfulResponse<Order>> updateOrderData({
    required id,
    required bool confirm,
    required ModifierOrder modifierOrder,
  }) => _client.updateOrderData(id, confirm, modifierOrder);

  @override
  Future<PrintfulResponse<Order>> confirmDraftForFulfillment({required id}) =>
      _client.confirmDraftForFulfillment(id);

  @override
  Future<PrintfulResponse<Order>> estimateOrderCosts({
    required ModifierOrder modifierOrder,
  }) => _client.estimateOrderCosts(modifierOrder);
}
