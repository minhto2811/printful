import 'package:printful/src/api/client.dart';
import 'package:printful/src/models/request/modifier_sync_product.dart';
import 'package:printful/src/models/request/modifier_sync_variant.dart';
import 'package:printful/src/models/response/printful_response.dart';
import 'package:printful/src/models/sync_product/sync_product.dart';
import 'package:printful/src/models/sync_product/sync_product_info.dart';
import 'package:printful/src/models/sync_product/sync_variant.dart';

abstract interface class ProductRepository {
  ///Authorizations:OAuth.
  ///Required [X-PF-Store-Id] use method [Printful.instance.setHeaderStoreId].
  Future<PrintfulResponse<SyncProduct>> createANewSyncProduct({
    required ModifierSyncProduct modifierSyncProduct,
  });

  ///https://developers.printful.com/docs/#tag/Products-API/operation/getSyncProducts
  ///Authorizations:OAuth.
  ///Required [X-PF-Store-Id] use method [Printful.instance.setHeaderStoreId].
  ///Parameter used to filter results by status/group of Sync Products
  ///[status]Enum: "all" "synced" "unsynced" "ignored" "imported" "discontinued"
  ///"out_of_stock"
  ///[categoryId]A comma-separated list of Category IDs of the Products that are to be returned
  Future<PrintfulResponse<List<SyncProduct>>> getSyncProducts({
     String? status,
     String? categoryId,
  });

  ///Authorizations:OAuth.
  ///Required [X-PF-Store-Id] use method [Printful.instance.setHeaderStoreId].
  ///[id]integer or string:
  ///Sync Product ID (integer) or External ID (if prefixed with @).
  Future<PrintfulResponse<SyncProductInfo>> getASyncProduct({
    required dynamic id,
  });

  ///Authorizations:OAuth.
  ///Required [X-PF-Store-Id] use method [Printful.instance.setHeaderStoreId].
  ///[id]integer or string:
  ///Sync Product ID (integer) or External ID (if prefixed with @)
  Future<PrintfulResponse<SyncProductInfo>> deleteASyncProduct({
    required dynamic id,
  });

  ///Authorizations:OAuth.
  ///Required [X-PF-Store-Id] use method [Printful.instance.setHeaderStoreId].
  ///[id]integer or string:
  ///Sync Product ID (integer) or External ID (if prefixed with @)
  Future<PrintfulResponse<SyncProduct>> modifyASyncProduct({
    required ModifierSyncProduct modifierSyncProduct,
    required dynamic id,
  });

  ///Authorizations:OAuth.
  ///Required [X-PF-Store-Id] use method [Printful.instance.setHeaderStoreId].
  ///[id]integer or string:
  ///Sync Product ID (integer) or External ID (if prefixed with @)
  Future<PrintfulResponse<SyncVariant>> getASyncVariant({required dynamic id});

  ///Authorizations:OAuth.
  ///Required [X-PF-Store-Id] use method [Printful.instance.setHeaderStoreId].
  ///[id]integer or string:
  ///Sync Product ID (integer) or External ID (if prefixed with @)
  Future<PrintfulResponse<SyncVariant>> deleteASyncVariant({
    required dynamic id,
  });

  ///Authorizations:OAuth.
  ///Required [X-PF-Store-Id] use method [Printful.instance.setHeaderStoreId].
  ///[id]integer or string:
  ///Sync Product ID (integer) or External ID (if prefixed with @)
  Future<PrintfulResponse<SyncProduct>> modifyASyncVariant({
    required dynamic id,
    required ModifierSyncVariant modifierSyncVariant,
  });

  ///Authorizations:OAuth.
  ///Required [X-PF-Store-Id] use method [Printful.instance.setHeaderStoreId].
  ///[id]integer or string:
  ///Sync Product ID (integer) or External ID (if prefixed with @)
  Future<PrintfulResponse<SyncVariant>> createANewSyncVariant({
    required dynamic id,
    required ModifierSyncVariant modifierSyncVariant,
  });
}

class ProductRepositoryImpl implements ProductRepository {
  final PrintfulClient _client;

  ProductRepositoryImpl(this._client);

  @override
  Future<PrintfulResponse<List<SyncProduct>>> getSyncProducts({
     String? status,
     String? categoryId,
  }) => _client.getSyncProducts(status, categoryId);

  @override
  Future<PrintfulResponse<SyncProductInfo>> getASyncProduct({
    required dynamic id,
  }) => _client.getASyncProduct(id);

  @override
  Future<PrintfulResponse<SyncProductInfo>> deleteASyncProduct({
    required dynamic id,
  }) => _client.deleteASyncProduct(id);

  @override
  Future<PrintfulResponse<SyncProduct>> modifyASyncProduct({
    required ModifierSyncProduct modifierSyncProduct,
    required dynamic id,
  }) => _client.modifyASyncProduct(id, modifierSyncProduct);

  @override
  Future<PrintfulResponse<SyncVariant>> getASyncVariant({
    required dynamic id,
  }) => _client.getASyncVariant(id);

  @override
  Future<PrintfulResponse<SyncVariant>> deleteASyncVariant({
    required dynamic id,
  }) => _client.deleteASyncVariant(id);

  @override
  Future<PrintfulResponse<SyncProduct>> modifyASyncVariant({
    required id,
    required ModifierSyncVariant modifierSyncVariant,
  }) => _client.modifyASyncVariant(id, modifierSyncVariant);

  @override
  Future<PrintfulResponse<SyncProduct>> createANewSyncProduct({
    required ModifierSyncProduct modifierSyncProduct,
  }) => _client.createANewSyncProduct(modifierSyncProduct);

  @override
  Future<PrintfulResponse<SyncVariant>> createANewSyncVariant({
    required id,
    required ModifierSyncVariant modifierSyncVariant,
  }) => _client.createANewSyncVariant(id, modifierSyncVariant);
}
