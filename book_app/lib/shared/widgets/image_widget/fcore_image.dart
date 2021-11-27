import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FCoreImage extends StatelessWidget {
  FCoreImage(
    this.source, {
    Key? key,
    this.fit = BoxFit.cover,
    this.width,
    this.height,
    this.usePlaceHolder = false,
    this.color,
  }) : super(key: key);
  final String source;
  final BoxFit fit;
  final double? width;
  final double? height;
  final bool usePlaceHolder;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    if (source.contains('http')) {
      return Image.network(
        source,
        fit: fit,
        width: width,
        height: height,
        errorBuilder: (context, error, stackTrace) =>
                    const CircularProgressIndicator(

                    ),
      );
    }
    if (source.contains('.svg')) {
      return SvgPicture.asset(
        source,
        fit: fit,
        color: color,
        width: width,
        height: height,
      );
    }
    return Image.asset(
      source,
      fit: fit,
      width: width,
      height: height,
    );
  }
     Widget _loader(BuildContext context, String url) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _error(BuildContext context, String url, dynamic error) {
    return const Center(child: Icon(Icons.error));
  }
}
