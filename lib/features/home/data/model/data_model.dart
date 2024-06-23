import 'package:json_annotation/json_annotation.dart';

part 'data_model.g.dart';

@JsonSerializable()
class DataModel {
  @JsonKey(name: 'mal_id')
  final int malId;
  final String type;
  final String name;
  final String url;

  DataModel({
    required this.malId,
    required this.type,
    required this.name,
    required this.url,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);

  Map<String, dynamic> toJson() => _$DataModelToJson(this);
}
