import 'package:json_annotation/json_annotation.dart';

part 'aired_model.g.dart';

@JsonSerializable()
class AiredModel {
  final String? from;
  final String? to;

  AiredModel({
    this.from,
    this.to,
  });

  factory AiredModel.fromJson(Map<String, dynamic> json) =>
      _$AiredModelFromJson(json);

  Map<String, dynamic> toJson() => _$AiredModelToJson(this);
}
