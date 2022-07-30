import 'package:json_annotation/json_annotation.dart';
import 'package:manage/domain/data_model.dart';

part 'media_model.g.dart';

@JsonSerializable(createToJson: false)
class MediaModel {
  final List<DataModel>? data;

  MediaModel({
    this.data,
  });

  factory MediaModel.fromJson(Map<String, dynamic> json) => _$MediaModelFromJson(json);
}
