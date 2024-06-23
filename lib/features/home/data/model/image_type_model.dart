import 'package:json_annotation/json_annotation.dart';

part 'image_type_model.g.dart';

@JsonSerializable()
class ImageTypeModel {
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @JsonKey(name: 'small_image_url')
  final String smallImageUrl;
  @JsonKey(name: 'large_image_url')
  final String largeImageUrl;

  ImageTypeModel({
    required this.imageUrl,
    required this.smallImageUrl,
    required this.largeImageUrl,
  });

  factory ImageTypeModel.fromJson(Map<String, dynamic> json) =>
      _$ImageTypeModelFromJson(json);

  Map<String, dynamic> toJson() => _$ImageTypeModelToJson(this);
}
