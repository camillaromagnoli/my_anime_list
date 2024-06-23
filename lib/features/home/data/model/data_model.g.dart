// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataModel _$DataModelFromJson(Map<String, dynamic> json) => DataModel(
      malId: (json['mal_id'] as num).toInt(),
      type: json['type'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$DataModelToJson(DataModel instance) => <String, dynamic>{
      'mal_id': instance.malId,
      'type': instance.type,
      'name': instance.name,
      'url': instance.url,
    };
