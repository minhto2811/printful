import 'package:printful/src/models/oauth/token_response.dart';

extension TokenResponseExtension on TokenResponse {
  bool get isValid {
    try {
      final expiresAtSeconds = int.parse(expiresAt);
      DateTime expiryDate = DateTime.fromMillisecondsSinceEpoch(
        expiresAtSeconds * 1000,
      );
      return expiryDate.isAfter(DateTime.now());
    } catch (_) {
      return false;
    }
  }
}
