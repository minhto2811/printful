import 'package:printful/printful.dart';
import 'package:printful/src/models/country/country.dart';
import 'package:retrofit/http.dart';

mixin MixinCountry {
  @GET('/countries')
  Future<PrintfulResponse<List<Country>>> retrieveCountryList();
}
