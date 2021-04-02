import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:extended_image/extended_image.dart';

class ImageViewer extends StatefulWidget {
  final Uint8List imageData;

  ImageViewer(this.imageData);

  @override
  _ImageViewerState createState() => _ImageViewerState(imageData);
}

class _ImageViewerState extends State<ImageViewer> {
  final Uint8List imageData;
  _ImageViewerState(this.imageData);

  @override
  Widget build(BuildContext context) {
    return ExtendedImageSlidePage(
      slideAxis: SlideAxis.both,
      slideType: SlideType.onlyImage,
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor.withOpacity(.7),
        body: SizedBox.expand(
            child: ExtendedImage.memory(imageData,
                enableSlideOutPage: true, mode: ExtendedImageMode.gesture)),
      ),
    );
  }
}
