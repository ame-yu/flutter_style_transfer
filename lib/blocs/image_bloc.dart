import 'dart:typed_data';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../services/image/image_facade.dart';

part 'image_state.dart';

part 'image_event.dart';

part 'image_bloc.freezed.dart';

class ImageBloc extends Bloc<ImageEvent, ImageState> {
  final ImageFacade _imageFacade;
  ImageBloc(this._imageFacade) : super(ImageState());

  @override
  Stream<ImageState> mapEventToState(ImageEvent event) async* {
    yield* event.map(
      loadModel: (event) async* {
        await _imageFacade.loadModel();
        yield state.copyWith(
          modelLoaded: true,
          isLoading: false,
        );
      },
      arbitraryTransfer: (event) async* {
        yield* mapEventToState(ImageEvent.loadImage());
        await Future.delayed(const Duration(milliseconds: 1000));
        yield* mapEventToState(ImageEvent.transferImage(event.styleImagePath));
      },
      ganTransfer: (event) async* {
        yield* mapEventToState(ImageEvent.loadImage());
        await Future.delayed(const Duration(milliseconds: 1000));

        yield state.copyWith(
          isLoading: true,
        );

        await Future.delayed(const Duration(milliseconds: 1000));
        if (state.originImage == null) return;
        var transferImage = await _imageFacade.ganTransfer(state.originImage!);
        yield state.copyWith(
          transferImage: transferImage,
          isLoading: false,
        );
      },
      loadImage: (event) async* {
        var image = await _imageFacade.loadImage();
        yield state.copyWith(
          imageName: image!.name,
          originImage: image.data,
          isLoading: false,
        );
      },
      transferImage: (event) async* {
        yield state.copyWith(
          isLoading: true,
        );
        await Future.delayed(const Duration(milliseconds: 1000));

        var styleImageData =
            await _imageFacade.loadStyleImage(event.styleImagePath);

        var transferImage =
            await _imageFacade.transfer(state.originImage!, styleImageData);
        yield state.copyWith(
          transferImage: transferImage,
          isLoading: false,
        );
      },
      resetImage: (event) async* {
        print("123");
        yield state.copyWith(
          originImage: null,
          transferImage: null,
          isLoading: false,
        );
      },
    );
  }
}
