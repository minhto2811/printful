import 'package:printful/src/models/oauth/authorization_code_request.dart';
import 'package:printful/src/models/oauth/refresh_token_request.dart';
import 'package:printful/src/models/oauth/scope.dart';
import 'package:printful/src/models/oauth/token_response.dart';
import 'package:printful/src/models/response/printful_response.dart';
import 'package:retrofit/http.dart';

mixin MixinOauth {
  @POST('https://www.printful.com/oauth/token')
  Future<TokenResponse> authorize(
    @Body() AuthorizationCodeRequest authorizationCodeRequest,
  );

  @POST('https://www.printful.com/oauth/token')
  Future<TokenResponse> refreshToken(
    @Body() RefreshTokenRequest refreshTokenRequest,
  );

  @GET('/oauth/scopes')
  Future<PrintfulResponse<Scope>> getScopesForToken();
}
