// 🎯 Dart imports:
import 'dart:io';

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class CustomImageView extends StatelessWidget {
  /// a [CustomImageView] it can be used for showing any type of images
  /// it will shows the placeholder image if image is not found on network image
  CustomImageView({
    this.height = 18,
    this.width = 18,
    this.url,
    this.imagePath,
    this.svgPath,
    this.margin,
    this.onTap,
    this.file,
    this.color,
    this.fit,
    this.alignment,
    this.radius,
    this.border,
    this.placeHolder = 'assets/images/image_not_found.png',
  });
  double? height;
  double? width;

  ///[imagePath] is required parameter for showing png,jpg,etc image
  String? imagePath;

  ///[svgPath] is required parameter for showing svg image
  String? svgPath;

  ///[url] is required parameter for fetching network image
  String? url;

  ///[file] is required parameter for fetching image file
  File? file;
  Color? color;
  BoxFit? fit;
  final String placeHolder;
  Alignment? alignment;
  EdgeInsetsGeometry? margin;
  VoidCallback? onTap;
  BorderRadius? radius;
  BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(alignment: alignment!, child: _buildWidget())
        : _buildWidget();
  }

  Widget _buildWidget() {
    return Padding(
        padding: margin ?? EdgeInsets.zero,
        child: InkWell(onTap: onTap, child: _buildCircleImage()));
  }

  /// build the image with border radius
  _buildCircleImage() {
    if (radius != null) {
      return ClipRRect(borderRadius: radius!, child: _buildImageWithBorder());
    } else {
      return _buildImageWithBorder();
    }
  }

  /// build the image with border and border radius style
  _buildImageWithBorder() {
    if (border != null) {
      return Container(
        decoration: BoxDecoration(
          border: border,
          borderRadius: radius,
        ),
        child: _buildImageView(),
      );
    } else {
      return _buildImageView();
    }
  }

  Widget _buildImageView() {
    if (svgPath != null && svgPath!.isNotEmpty) {
      return Container(
        height: height,
        width: width,
        child: SvgPicture.asset(
          svgPath!,
          height: height,
          width: width,
          fit: fit ?? BoxFit.contain,
        ),
      );
    } else if (imagePath != null && imagePath!.isNotEmpty) {
      return Image.asset(
        imagePath!,
        height: height,
        width: width,
        fit: fit ?? BoxFit.cover,
        color: color,
      );
    } else if (file != null && file!.path.isNotEmpty) {
      return Image.file(
        file!,
        height: height,
        width: width,
        fit: fit ?? BoxFit.cover,
        color: color,
      );
    } else if (url != null && url!.isNotEmpty) {
      return CachedNetworkImage(
          height: height,
          width: width,
          fit: fit,
          imageUrl: url!,
          color: color,
          placeholder: (context, url) => Container(
              height: 30,
              width: 30,
              child: LinearProgressIndicator(
                color: Colors.grey.shade200,
                backgroundColor: Colors.grey.shade100,
              )),
          errorWidget: (context, url, error) => Image.asset(
                placeHolder,
                height: height,
                width: width,
                fit: fit ?? BoxFit.cover,
              ));
    }
    return SizedBox();
  }
}
