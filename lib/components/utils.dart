import 'package:flutter/material.dart';

ShaderMask gradientMask(AssetImage image,
    {Color bottomColor = Colors.black87}) {
  return ShaderMask(
    child: Image(
      image: image,
      fit: BoxFit.fill,
      color: Colors.black54, //半黑蒙层
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
