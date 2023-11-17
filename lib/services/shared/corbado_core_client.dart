import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
    additionalProperties: AdditionalProperties(pubName: 'core_api'),
    inputSpecFile: './lib/services/shared/openapi/core_api_public.yml',
    generatorName: Generator.dart,
    outputDirectory: './lib/services/shared/corbado_core_client',
  alwaysRun: true
)
class CoreApiClient {}
