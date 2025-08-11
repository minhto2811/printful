import 'package:printful/src/models/oauth/scope.dart';
import 'package:printful/src/models/response/printful_response.dart';
import 'package:retrofit/http.dart';

mixin MixinOauth {
  @GET('/oauth/scopes')
  Future<PrintfulResponse<Scope>> getScopesForToken();
}
