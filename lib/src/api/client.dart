import 'package:dio/dio.dart';
import 'package:printful/printful.dart';
import 'package:printful/src/api/mixin/mixin_country.dart';
import 'package:printful/src/api/mixin/mixin_file_library.dart';
import 'package:printful/src/api/mixin/mixin_mockup_generator.dart';
import 'package:printful/src/api/mixin/mixin_oauth.dart';
import 'package:printful/src/api/mixin/mixin_order.dart';
import 'package:printful/src/api/mixin/mixin_store_information.dart';
import 'package:printful/src/api/mixin/mixin_tax_rate.dart';
import 'package:printful/src/api/mixin/mixin_warehouse_product.dart';
import 'package:printful/src/models/country/country.dart';
import 'package:printful/src/models/file_library/file_url.dart';
import 'package:printful/src/models/file_library/print_file.dart';
import 'package:printful/src/models/mockup/generation_task.dart';
import 'package:printful/src/models/mockup/printfile_info.dart';
import 'package:printful/src/models/oauth/authorization_code_request.dart';
import 'package:printful/src/models/oauth/refresh_token_request.dart';
import 'package:printful/src/models/oauth/token_response.dart';
import 'package:printful/src/models/request/modifier_print_file.dart';
import 'package:printful/src/models/request/modifier_shipping.dart';
import 'package:printful/src/models/shipping_rate/shipping_info.dart';
import 'package:printful/src/models/store_infomation/store_detail.dart';
import 'package:printful/src/models/store_infomation/store_summary.dart';
import 'package:printful/src/models/warehouse_product/warehouse_product.dart';
import 'package:retrofit/retrofit.dart';
import 'package:printful/src/models/product_template/product_template.dart';
import 'mixin/mixin_catalog.dart';
import 'mixin/mixin_product.dart';
import 'mixin/mixin_product_template.dart';
import 'mixin/mixin_shipping_rate.dart';

part 'client.g.dart';

@RestApi(baseUrl: 'https://api.printful.com/')
abstract class PrintfulClient
    with
        MixinOauth,
        MixinCatalog,
        MixinProduct,
        MixinProductTemplate,
        MixinOrder,
        MixinFileLibrary,
        MixinCountry,
        MixinTaxRate,
        MixinStoreInformation,
        MixinWarehouseProduct,
        MixinMockupGenerator,
        MixinShippingRate {
  factory PrintfulClient(Dio dio) = _PrintfulClient;
}
