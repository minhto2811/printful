import 'package:printful/printful.dart';
import 'package:printful/src/api/client.dart';
import 'package:printful/src/models/request/modifier_shipping.dart';
import 'package:printful/src/models/shipping_rate/shipping_info.dart';

abstract class ShippingRateRepository {
  ///Returns available shipping options and rates for the given list of products.
  ///Authorizations:OAuth.
  ///Required [X-PF-Store-Id] use method [Printful.instance.setHeaderStoreId].
  ///Use this to specify which store you want to use (required only for account level token).
  ///The store IDs can be retrieved with the Get basic information about stores endpoint.
  Future<PrintfulResponse<ShippingInfo>> calculateShippingRates({
    required ModifierShipping modifierShipping,
  });
}

class ShippingRateRepositoryImpl implements ShippingRateRepository {
  final PrintfulClient _client;

  ShippingRateRepositoryImpl(this._client);

  @override
  Future<PrintfulResponse<ShippingInfo>> calculateShippingRates({
    required ModifierShipping modifierShipping,
  }) => _client.calculateShippingRates(modifierShipping);
}
