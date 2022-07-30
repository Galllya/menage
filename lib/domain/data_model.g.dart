// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataModel _$DataModelFromJson(Map<String, dynamic> json) => DataModel(
      id: json['id'] as int,
      attributes: json['attributes'] == null
          ? null
          : NameModel.fromJson(json['attributes'] as Map<String, dynamic>),
    );
