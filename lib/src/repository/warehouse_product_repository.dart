import 'package:printful/src/api/client.dart';
import 'package:printful/src/models/warehouse_product/warehouse_product.dart';

import '../models/response/printful_response.dart';

abstract interface class WarehouseProductRepository {
  ///Authorizations:OAuth
  ///Required [X-PF-Store-Id] use method [Printful.instance.setHeaderStoreId]
  ///[query] Filter by partial or full product name
  ///[limit] Number of items per page (max 100)
  ///[offset] Offset of the first item to return
  Future<PrintfulResponse<List<WarehouseProduct>>>
  getAListOfYourWarehouseProducts({
    required String query,
    required int limit,
    required int offset,
  });

  ///Authorizations:OAuth
  ///Required [X-PF-Store-Id] use method [Printful.instance.setHeaderStoreId]
  ///[id] Product ID
  Future<PrintfulResponse<WarehouseProduct>> getWarehouseProductData({
    required int id,
  });
}

class WarehouseProductRepositoryImpl implements WarehouseProductRepository {
  final PrintfulClient _client;

  WarehouseProductRepositoryImpl(this._client);

  @override
  Future<PrintfulResponse<List<WarehouseProduct>>>
  getAListOfYourWarehouseProducts({
    required String query,
    required int limit,
    required int offset,
  }) => _client.getAListOfYourWarehouseProducts(query, limit, offset);

  @override
  Future<PrintfulResponse<WarehouseProduct>> getWarehouseProductData({
    required int id,
  }) => _client.getWarehouseProductData(id);
}
