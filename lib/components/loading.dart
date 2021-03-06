import 'package:flutter/material.dart';

Widget modelLoadingToast() {
  return FittedBox(
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.6),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        'Model Running...',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    ),
  );
}
