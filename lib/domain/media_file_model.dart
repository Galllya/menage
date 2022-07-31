import 'package:json_annotation/json_annotation.dart';

part 'media_file_model.g.dart';

@JsonSerializable(createToJson: true)
class MediaFileModel {
  final String media;
  final int type;

  MediaFileModel({
    required this.media,
    required this.type,
  });
  Map<String, dynamic> toJson() => _$MediaFileModelToJson(this);

  factory MediaFileModel.fromJson(Map<String, dynamic> json) => _$MediaFileModelFromJson(json);
}
