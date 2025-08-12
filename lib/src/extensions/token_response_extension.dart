import 'package:printful/src/models/oauth/token_response.dart';

extension TokenResponseExtension on TokenResponse {
  bool get isValid {
    DateTime expiryDate = DateTime.fromMillisecondsSinceEpoch(expiresAt * 1000);
    return expiryDate.isAfter(DateTime.now());
  }
}
