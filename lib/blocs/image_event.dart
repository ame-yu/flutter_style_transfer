part of 'image_bloc.dart';

@freezed
class ImageEvent with _$ImageEvent {
  const factory ImageEvent.loadModel() = LoadModel;
  const factory ImageEvent.loadImage(String styleImagePath) = LoadImage;
  const factory ImageEvent.transferImage(String styleImagePath) = TransferImage;
  const factory ImageEvent.resetImage() = ResetImage;
}
