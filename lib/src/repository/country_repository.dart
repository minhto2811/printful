import 'package:printful/printful.dart';
import 'package:printful/src/api/client.dart';
import 'package:printful/src/models/country/country.dart';

abstract interface class CountryRepository {
  ///Returns list of countries and states that are accepted by the Printful.
  Future<PrintfulResponse<List<Country>>> retrieveCountryList();
}

class CountryRepositoryImpl implements CountryRepository {
  final PrintfulClient _client;

  CountryRepositoryImpl(this._client);

  @override
  Future<PrintfulResponse<List<Country>>> retrieveCountryList() =>
      _client.retrieveCountryList();
}
