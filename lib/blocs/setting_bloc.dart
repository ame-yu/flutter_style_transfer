import "package:flutter_bloc/flutter_bloc.dart";
import "package:hydrated_bloc/hydrated_bloc.dart";
import 'package:flutter/foundation.dart';

enum SettingEvent { openAutoSave, closeAutoSave }

class Setting {
  bool autoSave;
  Setting(this.autoSave);
}

// class SettingBloc extends Bloc<SettingEvent, Setting> with HydratedMixin {
//   @override
//   Stream<Setting> mapEventToState(SettingEvent event) async* {
//     switch (event) {
//       case SettingEvent.openAutoSave:
//         yield Setting(true);
//         break;
//       case SettingEvent.closeAutoSave:
//         yield Setting(false);
//         break;
//     }
//   }

//   @override
//   Setting fromJson(Map<String, dynamic> json) {
//     return Setting(json['autoSave'] as bool);
//   }

//   @override
//   Map<String, dynamic> toJson(Setting state) {
//     return {"autoSave": state.autoSave};
//   }
// }

class SettingCubit extends HydratedCubit<Setting> {
  SettingCubit() : super(Setting(false));
  void toggleAutoSave() {
    emit(state.autoSave ? Setting(false) : Setting(true));
  }

  @override
  Setting fromJson(Map<String, dynamic> json) {
    return Setting(json['autoSave'] as bool);
  }

  @override
  Map<String, dynamic> toJson(Setting state) {
    return {"autoSave": state.autoSave};
  }
}
