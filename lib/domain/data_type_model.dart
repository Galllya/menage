import 'package:json_annotation/json_annotation.dart';
import 'package:manage/domain/info_data_type_model.dart';

part 'data_type_model.g.dart';

@JsonSerializable(createToJson: false)
class DataTypeModel {
  final InfoDataTypeModel? dataType;

  DataTypeModel({
    this.dataType,
  });

  factory DataTypeModel.fromJson(Map<String, dynamic> json) => _$DataTypeModelFromJson(json);
}
