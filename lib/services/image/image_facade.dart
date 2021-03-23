import 'dart:typed_data';

import 'image_picker_facade.dart';
import 'image_transfer_facade.dart';

class ImageFacade {
  ImagePickerFacade _imagePickerFacade = ImagePickerFacade();
  ImageTransferFacade _imageTransferFacade = ImageTransferFacade();

  Future<Uint8List?> loadImage() async {
    return _imagePickerFacade.loadImage();
  }

  Future<void> loadModel() async {
    return _imageTransferFacade.loadModel();
  }

  Future<Uint8List> loadStyleImage(String styleImagePath) async {
    return _imageTransferFacade.loadStyleImage(styleImagePath);
  }

  Future<Uint8List> transfer(Uint8List originData, Uint8List styleData) async {
    return _imageTransferFacade.transfer(originData, styleData);
  }

  Future<Uint8List> ganTransfer(Uint8List originData) async {
    return _imageTransferFacade.ganTransfer(originData);
  }
}
