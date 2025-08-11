import 'package:printful/printful.dart';
import 'package:printful/src/api/client.dart';
import 'package:printful/src/models/country/country.dart';

abstract interface class TaxRateRepository {
  ///Retrieve state list that requires sales tax calculation
  Future<PrintfulResponse<List<Country>>>
  getAListOfCountriesForTaxCalculation();
}

class TaxRateRepositoryImpl implements TaxRateRepository {
  final PrintfulClient _client;

  TaxRateRepositoryImpl(this._client);

  @override
  Future<PrintfulResponse<List<Country>>>
  getAListOfCountriesForTaxCalculation() =>
      _client.getAListOfCountriesForTaxCalculation();
}
