part of 'history_bloc.dart';

class HistoryItem extends Equatable {
  final int key;
  final String time;
  final String name;
  final Uint8List content;
  HistoryItem(this.key, this.name, this.time, this.content);

  @override
  List<Object?> get props => [key];
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
