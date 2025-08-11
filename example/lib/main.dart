import 'package:flutter/material.dart';
import 'package:printful/printful.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // Printful.instance.setBearerToken(
    //   token: 'byly0vFucP4e5DKeLMl3gTVXuLmNedge8SIfii3M',
    // );
    Printful.instance.OAUTH_API.authorize(
      clientId: 'app-3147029',
      stateValue: '123',
      redirectUrl: 'com.mxgk.dehay://oauth/callback',
    );
    super.initState();
  }

  createOrder() async {
    final order = ModifierOrder(
      externalId: '4235234213',
      shipping: 'STANDARD',
      recipient: Address(
        name: 'John Smith',
        company: 'John Smith Inc',
        address1: '19749 Dearborn St',
        address2: 'string',
        city: 'Chatsworth',
        stateCode: 'CA',
        stateName: 'California',
        countryCode: 'US',
        countryName: 'United States',
        zip: '91311',
        phone: '2312322334',
        email: 'firstname.secondname@domain.com',
        taxNumber: '123.456.789-10',
      ),
      items: [
        OrderItem(
          id: 1,
          externalId: 'item-1',
          variantId: 1,
          syncVariantId: 1,
          externalVariantId: 'variant-1',
          warehouseProductVariantId: 1,
          productTemplateId: 1,
          externalProductId: 'template-123',
          quantity: 1,
          price: '13.00',
          retailPrice: '13.00',
          name: 'Enhanced Matte Paper Poster 18×24',
          product: ProductVariant(
            variantId: 3001,
            productId: 301,
            name:
                'Bella + Canvas 3001 Unisex Short Sleeve Jersey T-Shirt with Tear Away Label (White / 4XL)',
            image:
                'https://files.cdn.printful.com/products/71/5309_1581412541.jpg',
          ),

          files: [
            FileAttachment(
              type: 'default',
              url: 'https://example.com/image.jpg',
              options: [FileOption(id: 'template_type', value: 'native')],
              filename: 'shirt1.png',
              visible: true,
              position: FilePosition(
                areaWidth: 1800,
                areaHeight: 2400,
                width: 1800,
                height: 1800,
                top: 300,
                left: 0,
                limitToPrintArea: true,
              ),
            ),
          ],
          options: [ItemOption(id: 'OptionKey', value: 'OptionValue')],
          sku: null,
          discontinued: true,
          outOfStock: true,
        ),
      ],
      retailCosts: OrderRetailCosts(
        currency: 'USD',
        subtotal: '10.00',
        shipping: '5.00',
        discount: '0.00',
        tax: '0.00',
      ),
      gift: OrderGift(subject: 'To John', message: 'Have a nice day'),
      packingSlip: PackingSlip(
        email: 'your-name@your-domain.com',
        phone: '+371 28888888',
        logoUrl: 'http://www.your-domain.com/packing-logo.png',
        storeName: 'Your store name',
        customOrderId: 'kkk2344lm',
        message: 'Thanks for your order!',
      ),
    );
    try {
      final response = await Printful.instance.ORDER_API.createANewOrder(
        modifierOrder: order,
        confirm: false,
        updateExisting: false,
      );
      print(response);
    } catch (e) {
      print(e);
    }
  }

  getProducts() async {
    try {
      final response = await Printful.instance.CATALOG_API.getProducts();
      response.result.forEach((e) => print(e.toJson()));
    } catch (e) {
      print(e);
    }
  }

  getVariant() async {
    try {
      final response = await Printful.instance.CATALOG_API.getVariant(
        id: 12735,
      );
      print(response);
    } catch (e) {
      print(e);
    }
  }

  getProduct() async {
    try {
      final response = await Printful.instance.CATALOG_API.getProduct(id: 206);
      response.result.variants.forEach((e) => print(e.toJson()));
    } catch (e) {
      print(e);
    }
  }

  getProductSizeGuide() async {
    try {
      final response = await Printful.instance.CATALOG_API.getProductSizeGuide(
        id: 206,
      );
      print(response);
    } catch (e) {
      print(e);
    }
  }

  getCategories() async {
    try {
      final response = await Printful.instance.CATALOG_API.getCategories();
      response.result.forEach((e) => print(e.toJson()));
    } catch (e) {
      print(e);
    }
  }

  getCategory() async {
    try {
      final response = await Printful.instance.CATALOG_API.getCategory(id: 1);
      print(response);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: getProducts,
                child: Text('getProducts'),
              ),
              ElevatedButton(onPressed: getVariant, child: Text('getVariant')),
              ElevatedButton(onPressed: getProduct, child: Text('getProduct')),
              ElevatedButton(
                onPressed: getProductSizeGuide,
                child: Text('getProductSizeGuide'),
              ),
              ElevatedButton(
                onPressed: getCategory,
                child: Text('getCategory'),
              ),
              ElevatedButton(
                onPressed: getCategories,
                child: Text('getCategories'),
              ),
              ElevatedButton(
                onPressed: createOrder,
                child: Text('createOrder'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
