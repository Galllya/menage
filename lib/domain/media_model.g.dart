// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaModel _$MediaModelFromJson(Map<String, dynamic> json) => MediaModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
