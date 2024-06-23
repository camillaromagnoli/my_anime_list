// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginationModel _$PaginationModelFromJson(Map<String, dynamic> json) =>
    PaginationModel(
      lastVisiblePage: (json['last_visible_page'] as num).toInt(),
      hasNextPage: json['has_next_page'] as bool,
      items: ItemsModel.fromJson(json['items'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaginationModelToJson(PaginationModel instance) =>
    <String, dynamic>{
      'last_visible_page': instance.lastVisiblePage,
      'has_next_page': instance.hasNextPage,
      'items': instance.items,
    };
