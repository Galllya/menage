// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_data_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InfoDataTypeModel _$InfoDataTypeModelFromJson(Map<String, dynamic> json) =>
    InfoDataTypeModel(
      id: json['id'] as int,
      attributes: json['attributes'] == null
          ? null
          : InfoTypeModel.fromJson(json['attributes'] as Map<String, dynamic>),
    );
