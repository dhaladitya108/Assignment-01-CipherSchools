import 'package:flutter/material.dart';

const String _imagePath = 'assets/images';

class _Image extends AssetImage {
  const _Image(String fileName) : super('$_imagePath/$fileName');
}

class AppImages {
  static const cipherLogo = _Image('Cipherschools_icon.png');
  static const rating = _Image('rating.png');
  static const heroImage = _Image('hero_image.png');
  static const courseImg = _Image('course_img.png');
}
