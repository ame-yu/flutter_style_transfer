part of './setting_cubit.dart';

@JsonSerializable()
class SettingState extends Equatable {
  const SettingState({this.autoSave = false});

  final bool autoSave;

  SettingState copyWith({
    bool? autoSave,
  }) {
    return SettingState(
      autoSave: autoSave ?? this.autoSave,
    );
  }

  factory SettingState.fromJson(Map<String, dynamic> json) =>
      _$SettingStateFromJson(json);
  Map<String, dynamic> toJson() => _$SettingStateToJson(this);

  @override
  List<Object> get props => [autoSave];
}
