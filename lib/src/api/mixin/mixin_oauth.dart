import 'package:printful/src/models/oauth/scope.dart';
import 'package:printful/src/models/response/printful_response.dart';
import 'package:retrofit/http.dart';

mixin MixinOauth {
  @GET('/oauth/authorize')
  Future<void> authorize(
    @Query('client_id') String clientId,
    @Query('state') String stateValue,
    @Query('redirect_url') String redirectUrl,
  );

  @GET('/oauth/scopes')
  Future<PrintfulResponse<Scope>> getScopesForToken();
}
