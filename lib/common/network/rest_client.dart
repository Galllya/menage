import 'package:dio/dio.dart';
import 'package:manage/common/models/pagination.dart';
import 'package:manage/domain/base_file.dart';
import 'package:manage/domain/base_model.dart';
import 'package:manage/domain/info_data_type_model.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/texts')
  Future<Pagination<BaseTextModel>> loadTexts();
  @POST('/texts')
  Future<void> addText({
    @Body() required Map<String, dynamic> textData,
  });
  @DELETE('/texts/{id}')
  Future<void> deleteText({
    @Path() required int id,
  });
  @PUT('/texts/{id}')
  Future<void> updateText({
    @Body() required Map<String, dynamic> textData,
    @Path() required int id,
  });
  @GET('/media-files')
  Future<Pagination<BaseFileModel>> loadFiles({
    @Query('populate') required String baseParam,
  });
  @GET('/types')
  Future<Pagination<InfoDataTypeModel>> loadTypes();

  @POST('/upload')
  Future<void> addFile({
    @Body() required Map<String, dynamic> formData,
    @Query('datatype') required String datatype,
    @Query('mimeType') required String mimeType,
  });
}
