// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hadith_narrator_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HadithNarratorModel _$$_HadithNarratorModelFromJson(
        Map<String, dynamic> json) =>
    _$_HadithNarratorModel(
      name: json['name'] as String,
      slug: json['slug'] as String,
      total: json['total'] as int,
      pagination: json['pagination'] == null
          ? null
          : PaginationModel.fromJson(
              json['pagination'] as Map<String, dynamic>),
      items: json['items'] == null
          ? null
          : IList<ItemModel>.fromJson(json['items'],
              (value) => ItemModel.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$$_HadithNarratorModelToJson(
        _$_HadithNarratorModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'total': instance.total,
      'pagination': instance.pagination,
      'items': instance.items?.toJson(
        (value) => value,
      ),
    };

_$_PaginationModel _$$_PaginationModelFromJson(Map<String, dynamic> json) =>
    _$_PaginationModel(
      totalItems: json['totalItems'] as int,
      currentPage: json['currentPage'] as int,
      pageSize: json['pageSize'] as int,
      totalPages: json['totalPages'] as int,
      startPage: json['startPage'] as int,
      endPage: json['endPage'] as int,
      endIndex: json['endIndex'] as int,
      startIndex: json['startIndex'] as int,
    );

Map<String, dynamic> _$$_PaginationModelToJson(_$_PaginationModel instance) =>
    <String, dynamic>{
      'totalItems': instance.totalItems,
      'currentPage': instance.currentPage,
      'pageSize': instance.pageSize,
      'totalPages': instance.totalPages,
      'startPage': instance.startPage,
      'endPage': instance.endPage,
      'endIndex': instance.endIndex,
      'startIndex': instance.startIndex,
    };

_$_ItemModel _$$_ItemModelFromJson(Map<String, dynamic> json) => _$_ItemModel(
      number: json['number'] as int,
      arab: json['arab'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_ItemModelToJson(_$_ItemModel instance) =>
    <String, dynamic>{
      'number': instance.number,
      'arab': instance.arab,
      'id': instance.id,
    };
