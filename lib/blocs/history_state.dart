part of 'history_bloc.dart';

class HistoryItem extends Equatable {
  final int key;
  final String time;
  final Uint8List content;
  HistoryItem(this.key, this.time, this.content);

  @override
  List<Object?> get props => [key];
}

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState.initial(
      [@Default([]) List<HistoryItem> records,
      @Default(0) int nextKey]) = _Initial;
}
