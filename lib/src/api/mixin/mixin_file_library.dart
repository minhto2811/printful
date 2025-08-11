import 'package:printful/printful.dart';
import 'package:printful/src/models/file_library/file_url.dart';
import 'package:printful/src/models/file_library/print_file.dart';
import 'package:printful/src/models/request/modifier_print_file.dart';
import 'package:retrofit/http.dart';

mixin MixinFileLibrary {
  @POST('/files')
  Future<PrintfulResponse<PrintFile>> addANewFile(
    @Body() ModifierPrintFile modifierPrintFile,
  );

  @GET('/files/{id}')
  Future<PrintfulResponse<PrintFile>> getFile(@Path('id') int id);

  @POST('/files/thread-colors')
  Future<PrintfulResponse<List<String>>>
  returnAvailableThreadColorsFromProvidedImageURL(@Body() FileUrl fileUrl);
}
