import 'package:printful/printful.dart';
import 'package:printful/src/models/store_infomation/store_detail.dart';
import 'package:printful/src/models/store_infomation/store_summary.dart';
import 'package:retrofit/http.dart';

mixin MixinStoreInformation {
  @POST('/store/packing-slip')
  Future<PrintfulResponse<PackingSlip>> changePackingSlip(
    @Body() PackingSlip packingSlip,
  );

  @GET('/store')
  Future<PrintfulResponse<StoreSummary>> getBasicInformationAboutStores();

  @GET('/store/{id}')
  Future<PrintfulResponse<StoreDetail>> getBasicInformationAboutAStore(
    @Path('id') int id,
  );
}
