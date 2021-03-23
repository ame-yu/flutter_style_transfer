part of 'history_bloc.dart';

@JsonSerializable()
class HistoryItem extends Equatable {
  final int key;
  final String time;
  @JsonKey(fromJson: base64ToUint8List, toJson: uint8ListToBase64)
  final Uint8List content;
  HistoryItem(this.key, this.time, this.content);

  @override
  List<Object?> get props => [key];

  factory HistoryItem.fromJson(Map<String, dynamic> json) =>
      _$HistoryItemFromJson(json);

  Map<String, dynamic> toJson() => _$HistoryItemToJson(this);
}

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState.initial(
      [@Default([]) List<HistoryItem> records,
      @Default(0) int nextKey]) = _Initial;
}

String uint8ListToBase64(Uint8List) {
  return Base64Encoder().convert(Uint8List);
}

Uint8List base64ToUint8List(String base64) {
  return Base64Decoder().convert(base64);
}
