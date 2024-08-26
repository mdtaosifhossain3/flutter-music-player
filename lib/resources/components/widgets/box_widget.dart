import 'package:flutter/material.dart';

class BoxWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final String? image;
  final BoxFit? fit;
  const BoxWidget({super.key, this.height, this.width, this.image, this.fit});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Image.asset(
        image!,
        height: height,
        width: width,
        fit: fit,
      ),
    );
  }
}
