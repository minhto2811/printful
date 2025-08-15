

import 'package:printful/printful.dart';
import 'package:printful/src/models/request/modifier_shipping.dart';
import 'package:printful/src/models/shipping_rate/shipping_info.dart';
import 'package:retrofit/http.dart';

mixin MixinShippingRate {

  @POST('/shipping/rates')
  Future<PrintfulResponse<List<ShippingInfo>>> calculateShippingRates(
    @Body() ModifierShipping modifierShipping,
  );
}