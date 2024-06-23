// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageTypeModel _$ImageTypeModelFromJson(Map<String, dynamic> json) =>
    ImageTypeModel(
      imageUrl: json['image_url'] as String,
      smallImageUrl: json['small_image_url'] as String,
      largeImageUrl: json['large_image_url'] as String,
    );

Map<String, dynamic> _$ImageTypeModelToJson(ImageTypeModel instance) =>
    <String, dynamic>{
      'image_url': instance.imageUrl,
      'small_image_url': instance.smallImageUrl,
      'large_image_url': instance.largeImageUrl,
    };
