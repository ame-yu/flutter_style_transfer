import 'dart:async';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:equatable/equatable.dart';
import './image_bloc.dart';

part 'history_event.dart';
part 'history_state.dart';
part 'history_bloc.freezed.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  late StreamSubscription imageBlocSubscription;
  final ImageBloc imageBloc;
  HistoryBloc(this.imageBloc) : super(_Initial()) {
    imageBlocSubscription = imageBloc.stream.listen((state) {
      if (state.transferImage != null) {
        add(HistoryEvent.addRecord(state.transferImage!));
      }
    });
  }

  @override
  Stream<HistoryState> mapEventToState(
    HistoryEvent event,
  ) async* {
    yield* event.map(
        addRecord: (event) async* {
          final time = DateTime.now().toIso8601String();
          final data = HistoryItem(state.nextKey, time, event.imageData);
          yield state.copyWith(
              nextKey: state.nextKey + 1,
              records: List.from(state.records)..add(data));
        },
        deleteRecord: (event) async* {
          yield state.copyWith(
              records: List.from(state.records)
                ..removeWhere((it) => it.key == event.key));
        },
        saveToGallery: (event) async* {});
  }

  @override
  Future<void> close() {
    imageBlocSubscription.cancel();
    return super.close();
  }
}
