
import 'package:printful/src/api/client.dart';
import 'package:printful/src/models/product_template/product_template.dart';
import 'package:printful/src/models/response/printful_response.dart';

abstract interface class ProductTemplateRepository {
  ///Authorizations:OAuth
  ///Required [X-PF-Store-Id] use method [Printful.instance.setHeaderStoreId]
  ///[limit] max 100
  Future<PrintfulResponse<ProductTemplate>> getProductTemplateList({
    required int offset,
    required int limit,
  });

  ///Authorizations:OAuth
  ///Required [X-PF-Store-Id] use method [Printful.instance.setHeaderStoreId]
  ///[id] Template ID (integer) or External Product ID (if prefixed with @)
  Future<PrintfulResponse<ProductTemplate>> getProductTemplate({
    required dynamic id,
  });

  ///Authorizations:OAuth
  ///Required [X-PF-Store-Id] use method [Printful.instance.setHeaderStoreId]
  ///[id] Template ID (integer) or External Product ID (if prefixed with @)
  Future<PrintfulResponse<bool>> deleteProductTemplate({required dynamic id});
}

class ProductTemplateRepositoryImpl implements ProductTemplateRepository {
  final PrintfulClient _client;

  ProductTemplateRepositoryImpl(this._client);

  @override
  Future<PrintfulResponse<ProductTemplate>> getProductTemplateList({
    required int offset,
    required int limit,
  }) => _client.getProductTemplateList(offset, limit);

  @override
  Future<PrintfulResponse<ProductTemplate>> getProductTemplate({
    required dynamic id,
  }) => _client.getProductTemplate(id);

  @override
  Future<PrintfulResponse<bool>> deleteProductTemplate({required id}) =>
      _client.deleteProductTemplate(id);
}
