import 'package:printful/printful.dart';
import 'package:printful/src/api/client.dart';
import 'package:printful/src/models/file_library/file_url.dart';
import 'package:printful/src/models/file_library/print_file.dart';
import 'package:printful/src/models/request/modifier_print_file.dart';

abstract interface class FileLibraryRepository {
  ///Authorizations:OAuth.
  ///Required [X-PF-Store-Id] use method [Printful.instance.setHeaderStoreId].
  ///Use this to specify which store you want to use (required only for account level token).
  ///The store IDs can be retrieved with the Get basic information about stores endpoint.
  Future<PrintfulResponse<PrintFile>> addANewFile({
    required ModifierPrintFile modifierPrintFile,
  });

  ///Authorizations:OAuth.
  ///Required [X-PF-Store-Id] use method [Printful.instance.setHeaderStoreId].
  ///Use this to specify which store you want to use (required only for account level token).
  ///The store IDs can be retrieved with the Get basic information about stores endpoint.
  ///[id] File ID.
  Future<PrintfulResponse<PrintFile>> getFile({required int id});

  ///Return available thread colors from provided image URL
  ///Returns colors in hexadecimal format.
  ///Returned thread colors are matched as closely as possible to provided image colors.
  Future<PrintfulResponse<List<String>>>
  returnAvailableThreadColorsFromProvidedImageURL({required FileUrl fileUrl});
}

class FileLibraryRepositoryImpl implements FileLibraryRepository {
  final PrintfulClient _client;

  const FileLibraryRepositoryImpl(this._client);

  @override
  Future<PrintfulResponse<PrintFile>> addANewFile({
    required ModifierPrintFile modifierPrintFile,
  }) => _client.addANewFile(modifierPrintFile);

  @override
  Future<PrintfulResponse<PrintFile>> getFile({required int id}) =>
      _client.getFile(id);

  @override
  Future<PrintfulResponse<List<String>>>
  returnAvailableThreadColorsFromProvidedImageURL({required FileUrl fileUrl}) =>
      _client.returnAvailableThreadColorsFromProvidedImageURL(fileUrl);
}
