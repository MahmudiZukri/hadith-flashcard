// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hadith_narrator_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HadithNarratorModelImpl _$$HadithNarratorModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HadithNarratorModelImpl(
      name: json['name'] as String,
      slug: json['slug'] as String,
      total: (json['total'] as num).toInt(),
      pagination: json['pagination'] == null
          ? null
          : PaginationModel.fromJson(
              json['pagination'] as Map<String, dynamic>),
      items: json['items'] == null
          ? null
          : IList<ItemModel>.fromJson(json['items'],
              (value) => ItemModel.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$$HadithNarratorModelImplToJson(
        _$HadithNarratorModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'total': instance.total,
      'pagination': instance.pagination,
      'items': instance.items?.toJson(
        (value) => value,
      ),
    };

_$PaginationModelImpl _$$PaginationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginationModelImpl(
      totalItems: (json['totalItems'] as num).toInt(),
      currentPage: (json['currentPage'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      startPage: (json['startPage'] as num).toInt(),
      endPage: (json['endPage'] as num).toInt(),
      endIndex: (json['endIndex'] as num).toInt(),
      startIndex: (json['startIndex'] as num).toInt(),
      pages:
          IList<int>.fromJson(json['pages'], (value) => (value as num).toInt()),
    );

Map<String, dynamic> _$$PaginationModelImplToJson(
        _$PaginationModelImpl instance) =>
    <String, dynamic>{
      'totalItems': instance.totalItems,
      'currentPage': instance.currentPage,
      'pageSize': instance.pageSize,
      'totalPages': instance.totalPages,
      'startPage': instance.startPage,
      'endPage': instance.endPage,
      'endIndex': instance.endIndex,
      'startIndex': instance.startIndex,
      'pages': instance.pages.toJson(
        (value) => value,
      ),
    };

_$ItemModelImpl _$$ItemModelImplFromJson(Map<String, dynamic> json) =>
    _$ItemModelImpl(
      number: (json['number'] as num).toInt(),
      arab: json['arab'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$ItemModelImplToJson(_$ItemModelImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'arab': instance.arab,
      'id': instance.id,
    };
