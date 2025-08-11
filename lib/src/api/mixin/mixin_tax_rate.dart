import 'package:printful/printful.dart';
import 'package:printful/src/models/country/country.dart';
import 'package:retrofit/retrofit.dart';

mixin MixinTaxRate {
  @GET('/tax/countries')
  Future<PrintfulResponse<List<Country>>>
  getAListOfCountriesForTaxCalculation();
}
