# 📦 Printful Flutter Plugin

[![pub package](https://img.shields.io/pub/v/printful.svg)](https://pub.dev/packages/printful)
[![license](https://img.shields.io/github/license/mxgk/printful)](LICENSE)
[![platform](https://img.shields.io/badge/platform-flutter-blue)](https://flutter.dev)

A Flutter plugin for integrating with the **[Printful API](https://www.printful.com)**.  
Easily manage products, orders, and shipping in your Flutter app with native Android/iOS support.

---

## 🚀 Features

- 🔑 **Authentication** — Connect with your Printful account via API Key.(Auto save token and refresh
  token)
- 📦 **Product Management** — Fetch product catalog, variants, and details.
- 🛒 **Order Handling** — Create and manage orders directly from your app.
- 🚚 **Shipping Rates** — Retrieve live shipping estimates.
- 📊 **Order Tracking** — Get real-time shipment tracking updates.

---

## 📥 Installation

Add this line to your `pubspec.yaml`:

```yaml
dependencies:
  printful: ^latest
```

Run `flutter pub get` to install the plugin into your app.

---

## 📝 Usage

Import the package:

```dart
import 'package:printful/printful.dart';
```

Use Private key or set Bearer token:

```dart
Printful.instance.setBearerToken;
```

Public App authorization:

```xml

<activity
        android:name="com.linusu.flutter_web_auth_2.CallbackActivity"
        android:exported="true"
        android:taskAffinity="">
  <intent-filter android:label="flutter_web_auth_2">
    <action android:name="android.intent.action.VIEW" />
    <category android:name="android.intent.category.DEFAULT" />
    <category android:name="android.intent.category.BROWSABLE" />
    <data android:scheme="YOUR_SCHEME" />
  </intent-filter>
</activity>
```

```plist
<key>CFBundleURLTypes</key>
 <array>
   <dict>
     <key>CFBundleTypeRole</key>
     <string>Editor</string>
     <key>CFBundleURLName</key>
     <string>com.example.abc</string>
     <key>CFBundleURLSchemes</key>
     <array>
       <string>YOUR_SCHEME</string>
     </array>
   </dict>
</array>
```

required call [Printful.instance.configPublicApp] earlier

```dart
Printful.instance.OAUTH_API.authorize;
```

---

```dart
Printful.instance.setHeaderStoreId;
```

```dart
Printful.instance.OAUTH_API;
Printful.instance.ORDER_API;
Printful.instance.CATALOG_API;
Printful.instance.PRODUCT_API;
Printful.instance.PRODUCT_TEMPLATE_API;
Printful.instance.FILE_LIBRARY_API;
Printful.instance.SHIPPING_RATE_API;
Printful.instance.COUNTRY_API;
Printful.instance.TAX_RATE_API;
Printful.instance.STORE_INFORMATION_API;
Printful.instance.WAREHOUSE_PRODUCT_API;
```

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 💡 Contributing

Contributions are welcome!  
Feel free to open an issue or submit a pull request.

---

## 📚 Resources

- [Printful API Docs](https://developers.printful.com/)
- [Flutter Documentation](https://docs.flutter.dev)
