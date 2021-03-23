// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HistoryItem _$HistoryItemFromJson(Map<String, dynamic> json) {
  return HistoryItem(
    json['key'] as int,
    json['time'] as String,
    base64ToUint8List(json['content'] as String),
  );
}

Map<String, dynamic> _$HistoryItemToJson(HistoryItem instance) =>
    <String, dynamic>{
      'key': instance.key,
      'time': instance.time,
      'content': uint8ListToBase64(instance.content),
    };
