import 'package:json_annotation/json_annotation.dart';

part 'title_model.g.dart';

@JsonSerializable()
class TitleModel {
  final String type;
  final String title;

  TitleModel({
    required this.type,
    required this.title,
  });

  factory TitleModel.fromJson(Map<String, dynamic> json) =>
      _$TitleModelFromJson(json);

  Map<String, dynamic> toJson() => _$TitleModelToJson(this);
}
