// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trailer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrailerModel _$TrailerModelFromJson(Map<String, dynamic> json) => TrailerModel(
      youtubeId: json['youtube_id'] as String?,
      url: json['url'] as String?,
      embedUrl: json['embed_url'] as String?,
    );

Map<String, dynamic> _$TrailerModelToJson(TrailerModel instance) =>
    <String, dynamic>{
      'youtube_id': instance.youtubeId,
      'url': instance.url,
      'embed_url': instance.embedUrl,
    };
