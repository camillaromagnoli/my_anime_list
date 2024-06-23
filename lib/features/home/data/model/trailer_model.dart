import 'package:json_annotation/json_annotation.dart';

part 'trailer_model.g.dart';

@JsonSerializable()
class TrailerModel {
  @JsonKey(name: 'youtube_id')
  final String? youtubeId;
  final String? url;
  @JsonKey(name: 'embed_url')
  final String? embedUrl;

  TrailerModel({
    this.youtubeId,
    this.url,
    this.embedUrl,
  });

  factory TrailerModel.fromJson(Map<String, dynamic> json) =>
      _$TrailerModelFromJson(json);

  Map<String, dynamic> toJson() => _$TrailerModelToJson(this);
}
