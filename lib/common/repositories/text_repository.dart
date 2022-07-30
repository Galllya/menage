import 'package:manage/common/models/pagination.dart';
import 'package:manage/common/network/rest_client.dart';
import 'package:manage/domain/base_model.dart';
import 'package:manage/domain/text_model.dart';

class TextRepository {
  final RestClient restClient;

  TextRepository(this.restClient);

  Future<Pagination<BaseTextModel>> loadTexts() => restClient.loadTexts();
  Future<void> addText({required TextModel textModel}) {
    final Map<String, dynamic> textData = {"data": textModel.toJson()};
    return restClient.addText(textData: textData);
  }

  Future<void> deleteText({required int id}) => restClient.deleteText(id: id);

  Future<void> updateText({required TextModel textModel, required int id}) {
    final Map<String, dynamic> textData = {"data": textModel.toJson()};
    return restClient.updateText(textData: textData, id: id);
  }
}
