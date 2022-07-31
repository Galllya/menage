import 'package:json_annotation/json_annotation.dart';

part 'media_type_model.g.dart';

@JsonSerializable(createToJson: true)
class MediaTypeModel {
  final String type;
  final String relation;

  final String target;

  final String mappedBy;

  MediaTypeModel({
    required this.mappedBy,
    required this.relation,
    required this.target,
    required this.type,
  });
  Map<String, dynamic> toJson() => _$MediaTypeModelToJson(this);

  factory MediaTypeModel.fromJson(Map<String, dynamic> json) => _$MediaTypeModelFromJson(json);
}
