// 🎯 Dart imports:
import 'dart:io';

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

// 🌎 Project imports:
import '/core/utils/logger.dart';

// ignore: must_be_immutable
class CustomImageView extends StatelessWidget {
  /// 모든 유형의 이미지를 표시하는 데 사용할 수 있는 [CustomImageView]입니다.
  /// 네트워크 이미지에서 이미지를 찾을 수 없는 경우 플레이스홀더 이미지를 표시합니다.
  CustomImageView({
    super.key,
    this.url,
    this.imagePath,
    this.svgPath,
    this.file,
    this.height,
    this.width,
    this.color,
    this.fit,
    this.alignment,
    this.onTap,
    this.radius,
    this.margin,
    this.border,
    this.callbackImage = 'assets/images/image_not_found.png',
  })  : assert(
            url != null || imagePath != null || svgPath != null || file != null,
            '네트워크 이미지 주소, 이미지 경로, SVG 경로 또는 파일 경로 중 하나는 반드시 제공해야 합니다.'),
        assert(
            !(url != null &&
                imagePath != null &&
                svgPath != null &&
                file != null),
            '네트워크 이미지 주소, 이미지 경로, SVG 경로 또는 파일 경로 중 하나만 제공해야 합니다.'),
        assert(svgPath == null || svgPath.isSvg, '잘못된 확장자명'),
        assert(url == null || url.isImage, '잘못된 확장자명'),
        assert(imagePath == null || imagePath.isImage, '잘못된 확장자명'),
        assert(file == null || file.path.isImage, '잘못된 확장자명');

  CustomImageView._square({
    Key? key,
    required double size,
    String? icon,
    String? avatar,
    String? url,
    Color? color,
    Alignment? alignment,
    EdgeInsetsGeometry? margin,
    VoidCallback? onTap,
    BorderRadius? radius,
    BoxBorder? border,
  }) : this(
          key: key,
          svgPath: icon,
          imagePath: avatar,
          url: url,
          height: size,
          width: size,
          color: color,
          alignment: alignment,
          margin: margin,
          onTap: onTap,
          radius: radius,
          border: border,
        );

  /// [url]은 네트워크 이미지를 불러오기 위한 필수 파라미터입니다.
  String? url;

  /// [이미지 경로]는 png, jpg 등의 이미지를 표시하기 위한 필수 파라미터입니다.
  String? imagePath;

  /// [svgPath]는 svg 이미지를 표시하기 위한 필수 파라미터입니다.
  String? svgPath;

  /// [파일] 이미지 파일 불러오기 필수 파라미터입니다.
  File? file;

  double? height;
  double? width;
  Color? color;
  BoxFit? fit;
  final String callbackImage;
  Alignment? alignment;
  VoidCallback? onTap;
  EdgeInsetsGeometry? margin;
  BorderRadius? radius;
  BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildWidget(),
          )
        : _buildWidget();
  }

  Widget _buildWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: InkWell(
        onTap: onTap,
        child: _buildCircleImage(),
      ),
    );
  }

  /// 테두리 반경으로 이미지 빌드
  Widget _buildCircleImage() {
    if (radius != null) {
      return ClipRRect(
        borderRadius: radius ?? BorderRadius.zero,
        child: _buildImageWithBorder(),
      );
    } else {
      return _buildImageWithBorder();
    }
  }

  /// 테두리 및 테두리 반경 스타일로 이미지를 빌드합니다.
  Widget _buildImageWithBorder() {
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
      return SizedBox(
        height: height,
        width: width,
        child: SvgPicture.asset(
          svgPath!,
          height: height,
          width: width,
          fit: fit ?? BoxFit.contain,
          colorFilter: ColorFilter.mode(
            color ?? Colors.transparent,
            BlendMode.srcIn,
          ),
        ),
      );
    } else if (imagePath != null && imagePath!.isNotEmpty) {
      return Image.asset(
        imagePath!,
        height: height,
        width: width,
        fit: fit,
        color: color,
      );
    } else if (file != null && file!.path.isNotEmpty) {
      logger.d('Showing file asset: $file');
      return Image.file(
        file!,
        height: height,
        width: width,
        fit: fit ?? BoxFit.cover,
        color: color,
      );
    } else if (url != null && url!.isNotEmpty) {
      logger.d('Loading network image asset: $url');
      return CachedNetworkImage(
        height: height,
        width: width,
        fit: fit,
        imageUrl: url!,
        color: color,
        placeholder: (context, url) => SizedBox(
          height: 30,
          width: 30,
          child: LinearProgressIndicator(
            color: Colors.grey.shade200,
            backgroundColor: Colors.grey.shade100,
          ),
        ),
        errorWidget: (context, url, error) => Image.asset(
          callbackImage,
          height: height,
          width: width,
          fit: fit ?? BoxFit.cover,
        ),
      );
    }
    return const SizedBox();
  }
}

extension on String {
  bool get isSvg => toLowerCase().endsWith('.svg');
  bool get isImage {
    final ext = toLowerCase();
    return ext.endsWith('.jpg') ||
        ext.endsWith('.jpeg') ||
        ext.endsWith('.png') ||
        ext.endsWith('.gif') ||
        ext.endsWith('.bmp');
  }
}

CustomImageView customIcon(
  String icon, {
  Key? key,
  double? size,
  VoidCallback? onTap,
  Alignment? alignment,
  EdgeInsetsGeometry? margin,
  BorderRadius? radius,
  BoxBorder? border,
  Color? color,
}) {
  return CustomImageView._square(
    key: key,
    icon: icon,
    size: size ?? 18.w,
    color: color,
    alignment: alignment,
    margin: margin,
    onTap: onTap,
    radius: radius,
    border: border,
  );
}

CustomImageView customAvatar(
  String avatar, {
  Key? key,
  double? size,
  VoidCallback? onTap,
  Alignment? alignment,
  EdgeInsetsGeometry? margin,
  BorderRadius? radius,
  BoxBorder? border,
  Color? color,
}) {
  return CustomImageView._square(
    key: key,
    avatar: avatar,
    size: size ?? 65.w,
    color: color,
    alignment: alignment,
    margin: margin,
    onTap: onTap,
    radius: radius,
    border: border,
  );
}
