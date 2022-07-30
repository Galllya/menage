import 'package:manage/common/models/pagination.dart';
import 'package:manage/common/network/rest_client.dart';
import 'package:manage/domain/base_file.dart';
import 'package:manage/domain/file_load_model.dart';

class MediaRepository {
  final RestClient restClient;

  MediaRepository(this.restClient);

  Future<Pagination<BaseFileModel>> loadFiles() => restClient.loadFiles(baseParam: '*');
  Future<void> addFile({required FileLoadModel fileModel}) => restClient.addFile(
      datatype: 'image/jpg', formData: fileModel.toJson(), mimeType: 'multipart/form-data');
}
