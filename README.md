# 📦 Printful Flutter Plugin

[![pub package](https://img.shields.io/pub/v/printful.svg)](https://pub.dev/packages/printful)
[![license](https://img.shields.io/github/license/mxgk/printful)](LICENSE)
[![platform](https://img.shields.io/badge/platform-flutter-blue)](https://flutter.dev)

A Flutter plugin for integrating with the **[Printful API](https://www.printful.com)**.  
Easily manage products, orders, and shipping in your Flutter app with native Android/iOS support.

---

## 🚀 Features

- 🔑 **Authentication** — Connect with your Printful account via API Key.
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

Use Private key:

```dart
Printful.instance.setBearerToken({required String token});
```

Public App authorization:

```dart
Printful.instance.OAUTH_API.authorize;
```


```dart
Printful.instance.setHeaderStoreId({required String storeId});
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
