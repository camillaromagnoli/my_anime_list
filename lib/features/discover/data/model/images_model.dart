import 'package:json_annotation/json_annotation.dart';

import 'image_type_model.dart';

part 'images_model.g.dart';

@JsonSerializable()
class ImagesModel {
  final ImageTypeModel webp;

  ImagesModel({
    required this.webp,
  });

  factory ImagesModel.fromJson(Map<String, dynamic> json) =>
      _$ImagesModelFromJson(json);

  Map<String, dynamic> toJson() => _$ImagesModelToJson(this);
}
