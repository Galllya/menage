// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseFileModel _$BaseFileModelFromJson(Map<String, dynamic> json) =>
    BaseFileModel(
      attributes: json['attributes'] == null
          ? null
          : FileModel.fromJson(json['attributes'] as Map<String, dynamic>),
      id: json['id'] as int,
    );
