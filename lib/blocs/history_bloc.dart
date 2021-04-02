import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:json_annotation/json_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import './image_bloc.dart';

part 'history_event.dart';
part 'history_state.dart';
part 'history_bloc.freezed.dart';
// part 'history_bloc.g.dart';

// with HydratedMixin
class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  late StreamSubscription imageBlocSubscription;
  final ImageBloc imageBloc;
  HistoryBloc(this.imageBloc) : super(_Initial()) {
    imageBlocSubscription = imageBloc.stream.listen((state) {
      if (state.transferImage != null) {
        add(HistoryEvent.addRecord(state.imageName!, state.transferImage!));
      }
    });
  }

  @override
  Stream<HistoryState> mapEventToState(
    HistoryEvent event,
  ) async* {
    yield* event.map(
        addRecord: (event) async* {
          var name = event.name;
          if (state.records.any((element) => element.name == name)) return;
          final time = DateTime.now().toIso8601String().substring(0, 19);
          final data = HistoryItem(state.nextKey, name, time, event.imageData);
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
