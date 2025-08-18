import 'package:printful/src/models/mockup/generation_task.dart';
import 'package:printful/src/models/mockup/mockup_template.dart';
import 'package:printful/src/models/mockup/printfile_info.dart';
import 'package:printful/src/models/request/modifier_mockup.dart';
import 'package:retrofit/http.dart';

import '../../models/response/printful_response.dart';

mixin MixinMockupGenerator {
  @GET('/mockup-generator/templates/{id}')
  Future<PrintfulResponse<MockupTemplate>> layoutTemplates(
    @Path('id') int id,
    @Query('orientation') String orientation,
    @Query('technique') String technique,
  );

  @POST('/mockup-generator/create-task/{id}')
  Future<PrintfulResponse<GenerationTask>> createAMockupGenerationTask(
    @Path('id') int id,
    @Body() ModifierMockup modifierMockup,
  );

  @GET('/mockup-generator/printfiles/{id}')
  Future<PrintfulResponse<PrintfileInfo>> retrieveProductVariantPrintfiles(
    @Path('id') int id,
    @Query('orientation') String orientation,
    @Query('technique') String technique,
  );

  @GET('/mockup-generator/task')
  Future<PrintfulResponse<GenerationTask>> mockupGenerationTaskResult(
    @Query('task_key') String taskKey,
  );
}
