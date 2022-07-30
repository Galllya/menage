import 'package:json_annotation/json_annotation.dart';
import 'package:manage/domain/type_info_model.dart';

part 'info_data_type_model.g.dart';

@JsonSerializable(createToJson: false)
class InfoDataTypeModel {
  final int id;
  final InfoTypeModel? attributes;

  InfoDataTypeModel({
    required this.id,
    this.attributes,
  });

  factory InfoDataTypeModel.fromJson(Map<String, dynamic> json) =>
      _$InfoDataTypeModelFromJson(json);
}
