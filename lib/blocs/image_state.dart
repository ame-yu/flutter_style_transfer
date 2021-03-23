part of 'image_bloc.dart';

@freezed
class ImageState with _$ImageState {
  const factory ImageState({
    Uint8List? originImage,
    Uint8List? transferImage,
    @Default(false) bool modelLoaded,
    @Default(false) bool isLoading,
  }) = _ImageState;
}
