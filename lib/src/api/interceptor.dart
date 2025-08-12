// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:printful/printful.dart';
import 'package:printful/src/di/injection.dart';
import 'package:printful/src/models/oauth/refresh_token_request.dart';
import 'package:printful/src/models/oauth/token_response.dart';
import 'package:printful/src/repository/oauth_repository.dart';
import 'package:printful/src/services/token_manager.dart';

class PrintfulInterceptor extends Interceptor {
  final TokenManager _tokenManager;

  PrintfulInterceptor(this._tokenManager);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('REQUEST[${options.method}] => PATH: ${options.path}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print(
      'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}',
    );
    super.onResponse(response, handler);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    print(
      'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}',
    );
    if (err.response?.statusCode == 401) {
      RequestOptions options = err.requestOptions;
      if (options.headers['requiresTokenRefresh'] == true) {
        return super.onError(err, handler);
      }
      TokenResponse? tokenResponse = await _tokenManager.loadToken();
      if (tokenResponse == null) {
        print(
          'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path} >> Required Login',
        );
        return super.onError(err, handler);
      }
      try {
        final refreshTokenRequest = RefreshTokenRequest(
          clientId: Printful.instance.clientId!,
          clientSecret: Printful.instance.clientSecret!,
          refreshToken: tokenResponse.refreshToken,
        );
        tokenResponse = await getIt<OauthRepository>().refreshToken(
          refreshTokenRequest: refreshTokenRequest,
        );
        options.headers['requiresTokenRefresh'] = true;
        options.headers['Authorization'] =
            'Bearer ${tokenResponse.accessToken}';
        return handler.resolve(await getIt<Dio>().fetch(options));
      } catch (e) {
        return super.onError(err, handler);
      }
    }
    super.onError(err, handler);
  }
}
