import "package:hydrated_bloc/hydrated_bloc.dart";
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'setting_state.dart';
part 'setting_cubit.g.dart';

enum SettingEvent { openAutoSave, closeAutoSave }

class SettingCubit extends HydratedCubit<SettingState> {
  SettingCubit() : super(const SettingState());

  void toggleAutoSave() {
    var newValue = state.autoSave ? false : true;
    emit(state.copyWith(autoSave: newValue));
  }

  @override
  SettingState fromJson(Map<String, dynamic> json) =>
      SettingState.fromJson(json);

  @override
  Map<String, dynamic> toJson(SettingState state) => state.toJson();
}
