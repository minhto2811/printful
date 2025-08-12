import 'package:printful/src/api/client.dart';
import 'package:printful/src/models/store_infomation/store_detail.dart';
import 'package:printful/src/models/store_infomation/store_summary.dart';

import '../models/order/order.dart';
import '../models/response/printful_response.dart';

abstract interface class StoreInformationRepository {
  ///Authorizations:OAuth.
  ///Required [X-PF-Store-Id] use method [Printful.instance.setHeaderStoreId].
  Future<PrintfulResponse<PackingSlip>> changePackingSlip({
    required PackingSlip packingSlip,
  });

  ///Authorizations:OAuth.
  Future<PrintfulResponse<List<StoreSummary>>> getBasicInformationAboutStores();

  ///Authorizations:OAuth.
  ///[id] Store ID
  Future<PrintfulResponse<StoreDetail>> getBasicInformationAboutAStore({
    required int id,
  });
}

class StoreInformationRepositoryImpl implements StoreInformationRepository {
  final PrintfulClient _client;

  const StoreInformationRepositoryImpl(this._client);

  @override
  Future<PrintfulResponse<PackingSlip>> changePackingSlip({
    required PackingSlip packingSlip,
  }) => _client.changePackingSlip(packingSlip);

  @override
  Future<PrintfulResponse<List<StoreSummary>>> getBasicInformationAboutStores() =>
      _client.getBasicInformationAboutStores();

  @override
  Future<PrintfulResponse<StoreDetail>> getBasicInformationAboutAStore({
    required int id,
  }) => _client.getBasicInformationAboutAStore(id);
}
