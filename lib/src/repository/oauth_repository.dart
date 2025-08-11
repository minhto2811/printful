import 'package:printful/src/api/client.dart';
import 'package:printful/src/models/oauth/scope.dart';
import 'package:printful/src/models/response/printful_response.dart';

abstract interface class OauthRepository {
  ///Authorizations:OAuth
  ///Required [X-PF-Store-Id] use method [Printful.instance.setHeaderStoreId]
  ///Returns a list of scopes associated with the token
  Future<PrintfulResponse<Scope>> getScopesForToken();
}

class OauthRepositoryImpl implements OauthRepository {
  final PrintfulClient _client;

  OauthRepositoryImpl(this._client);

  @override
  Future<PrintfulResponse<Scope>> getScopesForToken() =>
      _client.getScopesForToken();
}
