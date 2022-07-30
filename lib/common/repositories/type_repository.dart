import 'package:manage/common/models/pagination.dart';
import 'package:manage/common/network/rest_client.dart';
import 'package:manage/domain/info_data_type_model.dart';

class TypeRepository {
  final RestClient restClient;

  TypeRepository(this.restClient);

  Future<Pagination<InfoDataTypeModel>> loadFiles() => restClient.loadTypes();
}
