/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// Directory path: assets/images/student_detail
  $AssetsImagesStudentDetailGen get studentDetail =>
      const $AssetsImagesStudentDetailGen();

  /// Directory path: assets/images/subject_detail
  $AssetsImagesSubjectDetailGen get subjectDetail =>
      const $AssetsImagesSubjectDetailGen();
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// Directory path: assets/svg/class_detail
  $AssetsSvgClassDetailGen get classDetail => const $AssetsSvgClassDetailGen();

  /// Directory path: assets/svg/home_screen
  $AssetsSvgHomeScreenGen get homeScreen => const $AssetsSvgHomeScreenGen();
}

class $AssetsImagesStudentDetailGen {
  const $AssetsImagesStudentDetailGen();

  /// File path: assets/images/student_detail/student.png
  AssetGenImage get student =>
      const AssetGenImage('assets/images/student_detail/student.png');

  /// File path: assets/images/student_detail/student_chair.png
  AssetGenImage get studentChair =>
      const AssetGenImage('assets/images/student_detail/student_chair.png');

  /// List of all assets
  List<AssetGenImage> get values => [student, studentChair];
}

class $AssetsImagesSubjectDetailGen {
  const $AssetsImagesSubjectDetailGen();

  /// File path: assets/images/subject_detail/subject.png
  AssetGenImage get subject =>
      const AssetGenImage('assets/images/subject_detail/subject.png');

  /// List of all assets
  List<AssetGenImage> get values => [subject];
}

class $AssetsSvgClassDetailGen {
  const $AssetsSvgClassDetailGen();

  /// File path: assets/svg/class_detail/student_class.svg
  String get studentClass => 'assets/svg/class_detail/student_class.svg';

  /// List of all assets
  List<String> get values => [studentClass];
}

class $AssetsSvgHomeScreenGen {
  const $AssetsSvgHomeScreenGen();

  /// File path: assets/svg/home_screen/classroom.svg
  String get classroom => 'assets/svg/home_screen/classroom.svg';

  /// File path: assets/svg/home_screen/registration.svg
  String get registration => 'assets/svg/home_screen/registration.svg';

  /// File path: assets/svg/home_screen/student.svg
  String get student => 'assets/svg/home_screen/student.svg';

  /// File path: assets/svg/home_screen/subject.svg
  String get subject => 'assets/svg/home_screen/subject.svg';

  /// List of all assets
  List<String> get values => [classroom, registration, student, subject];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
