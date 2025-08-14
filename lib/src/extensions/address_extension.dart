
import '../models/order/order.dart';
import '../models/request/modifier_shipping.dart';

extension AddressExtension on Address {
  AddressInfo get addressInfo => AddressInfo(
    address1: address1,
    city: city,
    countryCode: countryCode,
    stateCode: stateCode,
    zip: zip,
    phone: phone,
  );
}
