import 'dart:io';

import 'package:dio/dio.dart';
import 'package:manage/common/models/pagination.dart';
import 'package:manage/common/network/rest_client.dart';
import 'package:manage/domain/base_file.dart';
import 'package:http_parser/http_parser.dart';
import 'package:manage/domain/load_file_model.dart';
import 'package:manage/domain/media_file_model.dart';

class MediaRepository {
  final RestClient restClient;

  MediaRepository(this.restClient);

  Future<Pagination<BaseFileModel>> loadFiles() => restClient.loadFiles(baseParam: '*');
  Future<List<LoadFileModel>> addFile({
    required File file,
    required String type,
  }) async {
    FormData formData = FormData.fromMap(
      {
        "files": await MultipartFile.fromFile(file.path,
            filename: 'aa',
            contentType: (type == "image" && type == "gif")
                ? MediaType('image', 'jpg')
                : type == "video"
                    ? MediaType('video', 'mp4')
                    : type == "audio"
                        ? MediaType('audio', 'mp3')
                        : MediaType('', ''))
      },
    );

    return restClient.addFile(
        datatype: 'image/jpg', formData: formData, mimeType: 'multipart/form-data');
  }

  Future<void> postMediaFiles({required MediaFileModel mediaFileModel}) {
    final Map<String, dynamic> mediaFile = {"data": mediaFileModel.toJson()};
    return restClient.postMediaFiles(media: mediaFile);
  }

  Future<void> deleteFile({required int id}) => restClient.deleteFile(id: id);
}
