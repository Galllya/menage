// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pagination<T> _$PaginationFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    Pagination<T>(
      (json['data'] as List<dynamic>).map(fromJsonT).toList(),
      fromJsonT(json['meta']),
    );
