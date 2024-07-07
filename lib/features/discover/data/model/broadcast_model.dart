import 'package:json_annotation/json_annotation.dart';

part 'broadcast_model.g.dart';

@JsonSerializable()
class BroadcastModel {
  final String? day;
  final String? time;
  final String? timezone;
  final String? string;

  BroadcastModel({
    this.day,
    this.time,
    this.timezone,
    this.string,
  });

  factory BroadcastModel.fromJson(Map<String, dynamic> json) =>
      _$BroadcastModelFromJson(json);

  Map<String, dynamic> toJson() => _$BroadcastModelToJson(this);
}
