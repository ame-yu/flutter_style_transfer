import 'dart:typed_data';

import 'package:multi_image_picker/multi_image_picker.dart';

class ImageData {
  String name;
  Uint8List data;
  ImageData(String this.name, Uint8List this.data);
}

class ImagePickerFacade {
  Future<ImageData?> loadImage() async {
    var resultList = await MultiImagePicker.pickImages(
      maxImages: 1,
      enableCamera: true,
    );

    if (resultList.length == 0) {
      return null;
    } else {
      var asset = resultList.single;
      var byteData = await asset.getByteData();
      return ImageData(asset.name ?? "", byteData.buffer.asUint8List());
    }
  }
}
