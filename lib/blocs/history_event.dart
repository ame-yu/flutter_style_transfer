part of 'history_bloc.dart';

@freezed
class HistoryEvent with _$HistoryEvent {
  const factory HistoryEvent.addRecord(String name, Uint8List imageData) =
      _AddRecord;
  const factory HistoryEvent.deleteRecord(int key) = _DeleteRecord;
  const factory HistoryEvent.saveToGallery() = _SaveToGallery;
}
