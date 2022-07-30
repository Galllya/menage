import 'package:json_annotation/json_annotation.dart';
import 'package:manage/domain/info_data_type_model.dart';

part 'type_model.g.dart';

@JsonSerializable(createToJson: false)
class TypeModel {
  final InfoDataTypeModel? data;

  TypeModel({
    this.data,
  });

  factory TypeModel.fromJson(Map<String, dynamic> json) => _$TypeModelFromJson(json);
}
