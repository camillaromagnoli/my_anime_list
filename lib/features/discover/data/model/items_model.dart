import 'package:json_annotation/json_annotation.dart';

part 'items_model.g.dart';

@JsonSerializable()
class ItemsModel {
  final int count;
  final int total;
  @JsonKey(name: 'per_page')
  final int perPage;

  ItemsModel({
    required this.count,
    required this.total,
    required this.perPage,
  });

  factory ItemsModel.fromJson(Map<String, dynamic> json) =>
      _$ItemsModelFromJson(json);

  Map<String, dynamic> toJson() => _$ItemsModelToJson(this);
}
