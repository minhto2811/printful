import 'package:printful/src/models/mockup/printfile_info.dart';

import '../api/client.dart';
import '../models/mockup/generation_task.dart';
import '../models/mockup/mockup_template.dart';
import '../models/request/modifier_mockup.dart';
import '../models/response/printful_response.dart';


abstract interface class MockupGeneratorRepository {
  ///Authorizations:
  /// OAuth
  ///Required [X-PF-Store-Id] use method [Printful.instance.setHeaderStoreId].
  ///[id]Product ID.
  Future<PrintfulResponse<GenerationTask>> createAMockupGenerationTask({
    required int id,
    required ModifierMockup modifierMockup,
  });

  ///Authorizations:
  /// OAuth
  ///Required [X-PF-Store-Id] use method [Printful.instance.setHeaderStoreId].
  ///[id]Product ID.
  ///[templateOrientation] Enum: "horizontal" "vertical"
  /// Optional orientation for wall art product printfiles.
  /// Allowed values: horizontal, vertical
  ///[technique] Optional technique for product.
  ///This can be used in cases where product supports
  ///multiple techniques like DTG and embroidery
  Future<PrintfulResponse<PrintfileInfo>> retrieveProductVariantPrintfiles({
    required int id,
    required Orientation orientation,
    required String technique,
  });

  ///Authorizations:
  /// OAuth
  ///Required [X-PF-Store-Id] use method [Printful.instance.setHeaderStoreId].
  ///[taskKey] Task key retrieved when creating the generation task.
  Future<PrintfulResponse<GenerationTask>> mockupGenerationTaskResult({
    required String taskKey,
  });

  ///Authorizations:
  /// OAuth
  ///Required [X-PF-Store-Id] use method [Printful.instance.setHeaderStoreId].
  ///[id]Product ID.
  ///[templateOrientation] Enum: "horizontal" "vertical"
  /// Optional orientation for wall art product printfiles.
  /// Allowed values: horizontal, vertical
  ///[technique] Optional technique for product.
  ///This can be used in cases where product supports
  ///multiple techniques like DTG and embroidery
  Future<PrintfulResponse<MockupTemplate>> layoutTemplates({
    required int id,
    required Orientation orientation,
    required String technique,
  });
}

class MockupGeneratorRepositoryImpl implements MockupGeneratorRepository {
  final PrintfulClient _client;

  MockupGeneratorRepositoryImpl(this._client);

  @override
  Future<PrintfulResponse<MockupTemplate>> layoutTemplates({
    required int id,
    required Orientation orientation,
    required String technique,
  }) => _client.layoutTemplates(id, orientation.name, technique);

  @override
  Future<PrintfulResponse<GenerationTask>> createAMockupGenerationTask({
    required int id,
    required ModifierMockup modifierMockup,
  }) => _client.createAMockupGenerationTask(id, modifierMockup);

  @override
  Future<PrintfulResponse<PrintfileInfo>> retrieveProductVariantPrintfiles({
    required int id,
    required Orientation orientation,
    required String technique,
  }) => _client.retrieveProductVariantPrintfiles(id, orientation.name, technique);

  @override
  Future<PrintfulResponse<GenerationTask>> mockupGenerationTaskResult({required String taskKey}) =>
      _client.mockupGenerationTaskResult(taskKey);
}
