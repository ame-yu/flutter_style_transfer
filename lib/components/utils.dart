import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';

ShaderMask gradientMask(AssetImage image,
    {Color bottomColor = Colors.black87, Color maskColor = Colors.black54}) {
  return ShaderMask(
    child: Image(
      image: image,
      fit: BoxFit.fill,
      color: maskColor, //蒙层
      colorBlendMode: BlendMode.srcATop,
    ),
    shaderCallback: (Rect bounds) {
      return LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [bottomColor, Colors.transparent],
        stops: [
          0.0,
          0.2,
        ],
      ).createShader(bounds);
    },
    blendMode: BlendMode.srcATop,
  );
}

class CustomBoxShadow extends BoxShadow {
  final BlurStyle blurStyle;

  const CustomBoxShadow({
    Color color = const Color(0xFF000000),
    Offset offset = Offset.zero,
    double blurRadius = 0.0,
    this.blurStyle = BlurStyle.normal,
  }) : super(color: color, offset: offset, blurRadius: blurRadius);

  @override
  Paint toPaint() {
    final Paint result = Paint()
      ..color = color
      ..maskFilter = MaskFilter.blur(this.blurStyle, blurSigma);
    assert(() {
      if (debugDisableShadows) result.maskFilter = null;
      return true;
    }());
    return result;
  }
}

Future<String?> saveImage(
  Uint8List imageData, {
  BuildContext? context,
}) async {
  var rst = (await ImageGallerySaver.saveImage(imageData)) as Map;
  if (context != null) {
    showSnakeBar(context, "Saved image to gallery.");
  }
  return rst['filePath'];
}

showSnakeBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
}
