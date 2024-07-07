// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'broadcast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BroadcastModel _$BroadcastModelFromJson(Map<String, dynamic> json) =>
    BroadcastModel(
      day: json['day'] as String?,
      time: json['time'] as String?,
      timezone: json['timezone'] as String?,
      string: json['string'] as String?,
    );

Map<String, dynamic> _$BroadcastModelToJson(BroadcastModel instance) =>
    <String, dynamic>{
      'day': instance.day,
      'time': instance.time,
      'timezone': instance.timezone,
      'string': instance.string,
    };
