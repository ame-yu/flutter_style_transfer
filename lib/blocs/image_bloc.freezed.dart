// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'image_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ImageStateTearOff {
  const _$ImageStateTearOff();

  _ImageState call(
      {Uint8List? originImage,
      Uint8List? transferImage,
      bool modelLoaded = false,
      bool isLoading = false}) {
    return _ImageState(
      originImage: originImage,
      transferImage: transferImage,
      modelLoaded: modelLoaded,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $ImageState = _$ImageStateTearOff();

/// @nodoc
mixin _$ImageState {
  Uint8List? get originImage => throw _privateConstructorUsedError;
  Uint8List? get transferImage => throw _privateConstructorUsedError;
  bool get modelLoaded => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageStateCopyWith<ImageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageStateCopyWith<$Res> {
  factory $ImageStateCopyWith(
          ImageState value, $Res Function(ImageState) then) =
      _$ImageStateCopyWithImpl<$Res>;
  $Res call(
      {Uint8List? originImage,
      Uint8List? transferImage,
      bool modelLoaded,
      bool isLoading});
}

/// @nodoc
class _$ImageStateCopyWithImpl<$Res> implements $ImageStateCopyWith<$Res> {
  _$ImageStateCopyWithImpl(this._value, this._then);

  final ImageState _value;
  // ignore: unused_field
  final $Res Function(ImageState) _then;

  @override
  $Res call({
    Object? originImage = freezed,
    Object? transferImage = freezed,
    Object? modelLoaded = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      originImage: originImage == freezed
          ? _value.originImage
          : originImage // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      transferImage: transferImage == freezed
          ? _value.transferImage
          : transferImage // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      modelLoaded: modelLoaded == freezed
          ? _value.modelLoaded
          : modelLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ImageStateCopyWith<$Res> implements $ImageStateCopyWith<$Res> {
  factory _$ImageStateCopyWith(
          _ImageState value, $Res Function(_ImageState) then) =
      __$ImageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Uint8List? originImage,
      Uint8List? transferImage,
      bool modelLoaded,
      bool isLoading});
}

/// @nodoc
class __$ImageStateCopyWithImpl<$Res> extends _$ImageStateCopyWithImpl<$Res>
    implements _$ImageStateCopyWith<$Res> {
  __$ImageStateCopyWithImpl(
      _ImageState _value, $Res Function(_ImageState) _then)
      : super(_value, (v) => _then(v as _ImageState));

  @override
  _ImageState get _value => super._value as _ImageState;

  @override
  $Res call({
    Object? originImage = freezed,
    Object? transferImage = freezed,
    Object? modelLoaded = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_ImageState(
      originImage: originImage == freezed
          ? _value.originImage
          : originImage // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      transferImage: transferImage == freezed
          ? _value.transferImage
          : transferImage // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      modelLoaded: modelLoaded == freezed
          ? _value.modelLoaded
          : modelLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_ImageState implements _ImageState {
  const _$_ImageState(
      {this.originImage,
      this.transferImage,
      this.modelLoaded = false,
      this.isLoading = false});

  @override
  final Uint8List? originImage;
  @override
  final Uint8List? transferImage;
  @JsonKey(defaultValue: false)
  @override
  final bool modelLoaded;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'ImageState(originImage: $originImage, transferImage: $transferImage, modelLoaded: $modelLoaded, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageState &&
            (identical(other.originImage, originImage) ||
                const DeepCollectionEquality()
                    .equals(other.originImage, originImage)) &&
            (identical(other.transferImage, transferImage) ||
                const DeepCollectionEquality()
                    .equals(other.transferImage, transferImage)) &&
            (identical(other.modelLoaded, modelLoaded) ||
                const DeepCollectionEquality()
                    .equals(other.modelLoaded, modelLoaded)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(originImage) ^
      const DeepCollectionEquality().hash(transferImage) ^
      const DeepCollectionEquality().hash(modelLoaded) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$ImageStateCopyWith<_ImageState> get copyWith =>
      __$ImageStateCopyWithImpl<_ImageState>(this, _$identity);
}

abstract class _ImageState implements ImageState {
  const factory _ImageState(
      {Uint8List? originImage,
      Uint8List? transferImage,
      bool modelLoaded,
      bool isLoading}) = _$_ImageState;

  @override
  Uint8List? get originImage => throw _privateConstructorUsedError;
  @override
  Uint8List? get transferImage => throw _privateConstructorUsedError;
  @override
  bool get modelLoaded => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ImageStateCopyWith<_ImageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ImageEventTearOff {
  const _$ImageEventTearOff();

  LoadModel loadModel() {
    return const LoadModel();
  }

  ArbitraryTransfer arbitraryTransfer(String styleImagePath) {
    return ArbitraryTransfer(
      styleImagePath,
    );
  }

  GANTransfer ganTransfer() {
    return const GANTransfer();
  }

  LoadImage loadImage() {
    return const LoadImage();
  }

  TransferImage transferImage(String styleImagePath) {
    return TransferImage(
      styleImagePath,
    );
  }

  ResetImage resetImage() {
    return const ResetImage();
  }
}

/// @nodoc
const $ImageEvent = _$ImageEventTearOff();

/// @nodoc
mixin _$ImageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadModel,
    required TResult Function(String styleImagePath) arbitraryTransfer,
    required TResult Function() ganTransfer,
    required TResult Function() loadImage,
    required TResult Function(String styleImagePath) transferImage,
    required TResult Function() resetImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadModel,
    TResult Function(String styleImagePath)? arbitraryTransfer,
    TResult Function()? ganTransfer,
    TResult Function()? loadImage,
    TResult Function(String styleImagePath)? transferImage,
    TResult Function()? resetImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadModel value) loadModel,
    required TResult Function(ArbitraryTransfer value) arbitraryTransfer,
    required TResult Function(GANTransfer value) ganTransfer,
    required TResult Function(LoadImage value) loadImage,
    required TResult Function(TransferImage value) transferImage,
    required TResult Function(ResetImage value) resetImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadModel value)? loadModel,
    TResult Function(ArbitraryTransfer value)? arbitraryTransfer,
    TResult Function(GANTransfer value)? ganTransfer,
    TResult Function(LoadImage value)? loadImage,
    TResult Function(TransferImage value)? transferImage,
    TResult Function(ResetImage value)? resetImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageEventCopyWith<$Res> {
  factory $ImageEventCopyWith(
          ImageEvent value, $Res Function(ImageEvent) then) =
      _$ImageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ImageEventCopyWithImpl<$Res> implements $ImageEventCopyWith<$Res> {
  _$ImageEventCopyWithImpl(this._value, this._then);

  final ImageEvent _value;
  // ignore: unused_field
  final $Res Function(ImageEvent) _then;
}

/// @nodoc
abstract class $LoadModelCopyWith<$Res> {
  factory $LoadModelCopyWith(LoadModel value, $Res Function(LoadModel) then) =
      _$LoadModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadModelCopyWithImpl<$Res> extends _$ImageEventCopyWithImpl<$Res>
    implements $LoadModelCopyWith<$Res> {
  _$LoadModelCopyWithImpl(LoadModel _value, $Res Function(LoadModel) _then)
      : super(_value, (v) => _then(v as LoadModel));

  @override
  LoadModel get _value => super._value as LoadModel;
}

/// @nodoc
class _$LoadModel implements LoadModel {
  const _$LoadModel();

  @override
  String toString() {
    return 'ImageEvent.loadModel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadModel,
    required TResult Function(String styleImagePath) arbitraryTransfer,
    required TResult Function() ganTransfer,
    required TResult Function() loadImage,
    required TResult Function(String styleImagePath) transferImage,
    required TResult Function() resetImage,
  }) {
    return loadModel();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadModel,
    TResult Function(String styleImagePath)? arbitraryTransfer,
    TResult Function()? ganTransfer,
    TResult Function()? loadImage,
    TResult Function(String styleImagePath)? transferImage,
    TResult Function()? resetImage,
    required TResult orElse(),
  }) {
    if (loadModel != null) {
      return loadModel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadModel value) loadModel,
    required TResult Function(ArbitraryTransfer value) arbitraryTransfer,
    required TResult Function(GANTransfer value) ganTransfer,
    required TResult Function(LoadImage value) loadImage,
    required TResult Function(TransferImage value) transferImage,
    required TResult Function(ResetImage value) resetImage,
  }) {
    return loadModel(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadModel value)? loadModel,
    TResult Function(ArbitraryTransfer value)? arbitraryTransfer,
    TResult Function(GANTransfer value)? ganTransfer,
    TResult Function(LoadImage value)? loadImage,
    TResult Function(TransferImage value)? transferImage,
    TResult Function(ResetImage value)? resetImage,
    required TResult orElse(),
  }) {
    if (loadModel != null) {
      return loadModel(this);
    }
    return orElse();
  }
}

abstract class LoadModel implements ImageEvent {
  const factory LoadModel() = _$LoadModel;
}

/// @nodoc
abstract class $ArbitraryTransferCopyWith<$Res> {
  factory $ArbitraryTransferCopyWith(
          ArbitraryTransfer value, $Res Function(ArbitraryTransfer) then) =
      _$ArbitraryTransferCopyWithImpl<$Res>;
  $Res call({String styleImagePath});
}

/// @nodoc
class _$ArbitraryTransferCopyWithImpl<$Res>
    extends _$ImageEventCopyWithImpl<$Res>
    implements $ArbitraryTransferCopyWith<$Res> {
  _$ArbitraryTransferCopyWithImpl(
      ArbitraryTransfer _value, $Res Function(ArbitraryTransfer) _then)
      : super(_value, (v) => _then(v as ArbitraryTransfer));

  @override
  ArbitraryTransfer get _value => super._value as ArbitraryTransfer;

  @override
  $Res call({
    Object? styleImagePath = freezed,
  }) {
    return _then(ArbitraryTransfer(
      styleImagePath == freezed
          ? _value.styleImagePath
          : styleImagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$ArbitraryTransfer implements ArbitraryTransfer {
  const _$ArbitraryTransfer(this.styleImagePath);

  @override
  final String styleImagePath;

  @override
  String toString() {
    return 'ImageEvent.arbitraryTransfer(styleImagePath: $styleImagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ArbitraryTransfer &&
            (identical(other.styleImagePath, styleImagePath) ||
                const DeepCollectionEquality()
                    .equals(other.styleImagePath, styleImagePath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(styleImagePath);

  @JsonKey(ignore: true)
  @override
  $ArbitraryTransferCopyWith<ArbitraryTransfer> get copyWith =>
      _$ArbitraryTransferCopyWithImpl<ArbitraryTransfer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadModel,
    required TResult Function(String styleImagePath) arbitraryTransfer,
    required TResult Function() ganTransfer,
    required TResult Function() loadImage,
    required TResult Function(String styleImagePath) transferImage,
    required TResult Function() resetImage,
  }) {
    return arbitraryTransfer(styleImagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadModel,
    TResult Function(String styleImagePath)? arbitraryTransfer,
    TResult Function()? ganTransfer,
    TResult Function()? loadImage,
    TResult Function(String styleImagePath)? transferImage,
    TResult Function()? resetImage,
    required TResult orElse(),
  }) {
    if (arbitraryTransfer != null) {
      return arbitraryTransfer(styleImagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadModel value) loadModel,
    required TResult Function(ArbitraryTransfer value) arbitraryTransfer,
    required TResult Function(GANTransfer value) ganTransfer,
    required TResult Function(LoadImage value) loadImage,
    required TResult Function(TransferImage value) transferImage,
    required TResult Function(ResetImage value) resetImage,
  }) {
    return arbitraryTransfer(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadModel value)? loadModel,
    TResult Function(ArbitraryTransfer value)? arbitraryTransfer,
    TResult Function(GANTransfer value)? ganTransfer,
    TResult Function(LoadImage value)? loadImage,
    TResult Function(TransferImage value)? transferImage,
    TResult Function(ResetImage value)? resetImage,
    required TResult orElse(),
  }) {
    if (arbitraryTransfer != null) {
      return arbitraryTransfer(this);
    }
    return orElse();
  }
}

abstract class ArbitraryTransfer implements ImageEvent {
  const factory ArbitraryTransfer(String styleImagePath) = _$ArbitraryTransfer;

  String get styleImagePath => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArbitraryTransferCopyWith<ArbitraryTransfer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GANTransferCopyWith<$Res> {
  factory $GANTransferCopyWith(
          GANTransfer value, $Res Function(GANTransfer) then) =
      _$GANTransferCopyWithImpl<$Res>;
}

/// @nodoc
class _$GANTransferCopyWithImpl<$Res> extends _$ImageEventCopyWithImpl<$Res>
    implements $GANTransferCopyWith<$Res> {
  _$GANTransferCopyWithImpl(
      GANTransfer _value, $Res Function(GANTransfer) _then)
      : super(_value, (v) => _then(v as GANTransfer));

  @override
  GANTransfer get _value => super._value as GANTransfer;
}

/// @nodoc
class _$GANTransfer implements GANTransfer {
  const _$GANTransfer();

  @override
  String toString() {
    return 'ImageEvent.ganTransfer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GANTransfer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadModel,
    required TResult Function(String styleImagePath) arbitraryTransfer,
    required TResult Function() ganTransfer,
    required TResult Function() loadImage,
    required TResult Function(String styleImagePath) transferImage,
    required TResult Function() resetImage,
  }) {
    return ganTransfer();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadModel,
    TResult Function(String styleImagePath)? arbitraryTransfer,
    TResult Function()? ganTransfer,
    TResult Function()? loadImage,
    TResult Function(String styleImagePath)? transferImage,
    TResult Function()? resetImage,
    required TResult orElse(),
  }) {
    if (ganTransfer != null) {
      return ganTransfer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadModel value) loadModel,
    required TResult Function(ArbitraryTransfer value) arbitraryTransfer,
    required TResult Function(GANTransfer value) ganTransfer,
    required TResult Function(LoadImage value) loadImage,
    required TResult Function(TransferImage value) transferImage,
    required TResult Function(ResetImage value) resetImage,
  }) {
    return ganTransfer(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadModel value)? loadModel,
    TResult Function(ArbitraryTransfer value)? arbitraryTransfer,
    TResult Function(GANTransfer value)? ganTransfer,
    TResult Function(LoadImage value)? loadImage,
    TResult Function(TransferImage value)? transferImage,
    TResult Function(ResetImage value)? resetImage,
    required TResult orElse(),
  }) {
    if (ganTransfer != null) {
      return ganTransfer(this);
    }
    return orElse();
  }
}

abstract class GANTransfer implements ImageEvent {
  const factory GANTransfer() = _$GANTransfer;
}

/// @nodoc
abstract class $LoadImageCopyWith<$Res> {
  factory $LoadImageCopyWith(LoadImage value, $Res Function(LoadImage) then) =
      _$LoadImageCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadImageCopyWithImpl<$Res> extends _$ImageEventCopyWithImpl<$Res>
    implements $LoadImageCopyWith<$Res> {
  _$LoadImageCopyWithImpl(LoadImage _value, $Res Function(LoadImage) _then)
      : super(_value, (v) => _then(v as LoadImage));

  @override
  LoadImage get _value => super._value as LoadImage;
}

/// @nodoc
class _$LoadImage implements LoadImage {
  const _$LoadImage();

  @override
  String toString() {
    return 'ImageEvent.loadImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadImage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadModel,
    required TResult Function(String styleImagePath) arbitraryTransfer,
    required TResult Function() ganTransfer,
    required TResult Function() loadImage,
    required TResult Function(String styleImagePath) transferImage,
    required TResult Function() resetImage,
  }) {
    return loadImage();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadModel,
    TResult Function(String styleImagePath)? arbitraryTransfer,
    TResult Function()? ganTransfer,
    TResult Function()? loadImage,
    TResult Function(String styleImagePath)? transferImage,
    TResult Function()? resetImage,
    required TResult orElse(),
  }) {
    if (loadImage != null) {
      return loadImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadModel value) loadModel,
    required TResult Function(ArbitraryTransfer value) arbitraryTransfer,
    required TResult Function(GANTransfer value) ganTransfer,
    required TResult Function(LoadImage value) loadImage,
    required TResult Function(TransferImage value) transferImage,
    required TResult Function(ResetImage value) resetImage,
  }) {
    return loadImage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadModel value)? loadModel,
    TResult Function(ArbitraryTransfer value)? arbitraryTransfer,
    TResult Function(GANTransfer value)? ganTransfer,
    TResult Function(LoadImage value)? loadImage,
    TResult Function(TransferImage value)? transferImage,
    TResult Function(ResetImage value)? resetImage,
    required TResult orElse(),
  }) {
    if (loadImage != null) {
      return loadImage(this);
    }
    return orElse();
  }
}

abstract class LoadImage implements ImageEvent {
  const factory LoadImage() = _$LoadImage;
}

/// @nodoc
abstract class $TransferImageCopyWith<$Res> {
  factory $TransferImageCopyWith(
          TransferImage value, $Res Function(TransferImage) then) =
      _$TransferImageCopyWithImpl<$Res>;
  $Res call({String styleImagePath});
}

/// @nodoc
class _$TransferImageCopyWithImpl<$Res> extends _$ImageEventCopyWithImpl<$Res>
    implements $TransferImageCopyWith<$Res> {
  _$TransferImageCopyWithImpl(
      TransferImage _value, $Res Function(TransferImage) _then)
      : super(_value, (v) => _then(v as TransferImage));

  @override
  TransferImage get _value => super._value as TransferImage;

  @override
  $Res call({
    Object? styleImagePath = freezed,
  }) {
    return _then(TransferImage(
      styleImagePath == freezed
          ? _value.styleImagePath
          : styleImagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$TransferImage implements TransferImage {
  const _$TransferImage(this.styleImagePath);

  @override
  final String styleImagePath;

  @override
  String toString() {
    return 'ImageEvent.transferImage(styleImagePath: $styleImagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransferImage &&
            (identical(other.styleImagePath, styleImagePath) ||
                const DeepCollectionEquality()
                    .equals(other.styleImagePath, styleImagePath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(styleImagePath);

  @JsonKey(ignore: true)
  @override
  $TransferImageCopyWith<TransferImage> get copyWith =>
      _$TransferImageCopyWithImpl<TransferImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadModel,
    required TResult Function(String styleImagePath) arbitraryTransfer,
    required TResult Function() ganTransfer,
    required TResult Function() loadImage,
    required TResult Function(String styleImagePath) transferImage,
    required TResult Function() resetImage,
  }) {
    return transferImage(styleImagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadModel,
    TResult Function(String styleImagePath)? arbitraryTransfer,
    TResult Function()? ganTransfer,
    TResult Function()? loadImage,
    TResult Function(String styleImagePath)? transferImage,
    TResult Function()? resetImage,
    required TResult orElse(),
  }) {
    if (transferImage != null) {
      return transferImage(styleImagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadModel value) loadModel,
    required TResult Function(ArbitraryTransfer value) arbitraryTransfer,
    required TResult Function(GANTransfer value) ganTransfer,
    required TResult Function(LoadImage value) loadImage,
    required TResult Function(TransferImage value) transferImage,
    required TResult Function(ResetImage value) resetImage,
  }) {
    return transferImage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadModel value)? loadModel,
    TResult Function(ArbitraryTransfer value)? arbitraryTransfer,
    TResult Function(GANTransfer value)? ganTransfer,
    TResult Function(LoadImage value)? loadImage,
    TResult Function(TransferImage value)? transferImage,
    TResult Function(ResetImage value)? resetImage,
    required TResult orElse(),
  }) {
    if (transferImage != null) {
      return transferImage(this);
    }
    return orElse();
  }
}

abstract class TransferImage implements ImageEvent {
  const factory TransferImage(String styleImagePath) = _$TransferImage;

  String get styleImagePath => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransferImageCopyWith<TransferImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetImageCopyWith<$Res> {
  factory $ResetImageCopyWith(
          ResetImage value, $Res Function(ResetImage) then) =
      _$ResetImageCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetImageCopyWithImpl<$Res> extends _$ImageEventCopyWithImpl<$Res>
    implements $ResetImageCopyWith<$Res> {
  _$ResetImageCopyWithImpl(ResetImage _value, $Res Function(ResetImage) _then)
      : super(_value, (v) => _then(v as ResetImage));

  @override
  ResetImage get _value => super._value as ResetImage;
}

/// @nodoc
class _$ResetImage implements ResetImage {
  const _$ResetImage();

  @override
  String toString() {
    return 'ImageEvent.resetImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResetImage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadModel,
    required TResult Function(String styleImagePath) arbitraryTransfer,
    required TResult Function() ganTransfer,
    required TResult Function() loadImage,
    required TResult Function(String styleImagePath) transferImage,
    required TResult Function() resetImage,
  }) {
    return resetImage();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadModel,
    TResult Function(String styleImagePath)? arbitraryTransfer,
    TResult Function()? ganTransfer,
    TResult Function()? loadImage,
    TResult Function(String styleImagePath)? transferImage,
    TResult Function()? resetImage,
    required TResult orElse(),
  }) {
    if (resetImage != null) {
      return resetImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadModel value) loadModel,
    required TResult Function(ArbitraryTransfer value) arbitraryTransfer,
    required TResult Function(GANTransfer value) ganTransfer,
    required TResult Function(LoadImage value) loadImage,
    required TResult Function(TransferImage value) transferImage,
    required TResult Function(ResetImage value) resetImage,
  }) {
    return resetImage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadModel value)? loadModel,
    TResult Function(ArbitraryTransfer value)? arbitraryTransfer,
    TResult Function(GANTransfer value)? ganTransfer,
    TResult Function(LoadImage value)? loadImage,
    TResult Function(TransferImage value)? transferImage,
    TResult Function(ResetImage value)? resetImage,
    required TResult orElse(),
  }) {
    if (resetImage != null) {
      return resetImage(this);
    }
    return orElse();
  }
}

abstract class ResetImage implements ImageEvent {
  const factory ResetImage() = _$ResetImage;
}
