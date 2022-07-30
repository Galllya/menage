// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FileModel _$FileModelFromJson(Map<String, dynamic> json) => FileModel(
      media: json['media'] == null
          ? null
          : MediaModel.fromJson(json['media'] as Map<String, dynamic>),
      type: json['type'] == null
          ? null
          : TypeModel.fromJson(json['type'] as Map<String, dynamic>),
    );
