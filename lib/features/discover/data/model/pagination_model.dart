import 'package:json_annotation/json_annotation.dart';

import 'items_model.dart';

part 'pagination_model.g.dart';

@JsonSerializable()
class PaginationModel {
  @JsonKey(name: 'last_visible_page')
  final int lastVisiblePage;
  @JsonKey(name: 'has_next_page')
  final bool hasNextPage;
  final ItemsModel items;

  PaginationModel({
    required this.lastVisiblePage,
    required this.hasNextPage,
    required this.items,
  });

  factory PaginationModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationModelFromJson(json);

  Map<String, dynamic> toJson() => _$PaginationModelToJson(this);
}
