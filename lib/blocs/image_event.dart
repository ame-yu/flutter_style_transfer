part of 'image_bloc.dart';

@freezed
class ImageEvent with _$ImageEvent {
  const factory ImageEvent.loadModel() = LoadModel;
  const factory ImageEvent.arbitraryTransfer(String styleImagePath) =
      ArbitraryTransfer;
  const factory ImageEvent.ganTransfer() = GANTransfer;
  const factory ImageEvent.loadImage() = LoadImage;
  const factory ImageEvent.transferImage(String styleImagePath) = TransferImage;
  const factory ImageEvent.resetImage() = ResetImage;
}
