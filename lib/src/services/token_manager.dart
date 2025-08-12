import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:printful/src/models/oauth/token_response.dart';

abstract interface class TokenManager {
  Future<void> saveToken(TokenResponse token);

  Future<TokenResponse?> loadToken();

  Future<void> clearToken();
}

class TokenManagerImpl implements TokenManager {
  final FlutterSecureStorage _storage;

  TokenManagerImpl(this._storage);

  @override
  Future<void> saveToken(TokenResponse token) async {
    final jsonString = jsonEncode(token.toJson());
    await _storage.write(key: 'token', value: jsonString);
  }

  @override
  Future<TokenResponse?> loadToken() async {
    final jsonString = await _storage.read(key: 'token');
    if (jsonString == null) return null;
    final Map<String, dynamic> jsonMap = jsonDecode(jsonString);
    return TokenResponse.fromJson(jsonMap);
  }

  @override
  Future<void> clearToken() => _storage.delete(key: 'token');
}
