// ignore_for_file: depend_on_referenced_packages

// 📦 Package imports:
import 'package:image/image.dart' show Image, Pixel;

/// Returns a cropped copy of [src].
Image copyCrop(Image src,
    {required int x,
    required int y,
    required int width,
    required int height,
    num radius = 0,
    bool antialias = true}) {
  // Make sure crop rectangle is within the range of the src image.
  x = x.clamp(0, src.width - 1);
  y = y.clamp(0, src.height - 1);
  if (x + width > src.width) {
    width = src.width - x;
  }
  if (y + height > src.height) {
    height = src.height - y;
  }

  if (radius > 0 && src.hasPalette) {
    src = src.convert(numChannels: src.numChannels);
  }

  Image? firstFrame;
  final numFrames = src.numFrames;
  for (var i = 0; i < numFrames; ++i) {
    final frame = src.frames[i];
    final dst = firstFrame?.addFrame() ??
        Image.fromResized(frame,
            width: width, height: height, noAnimation: true);
    firstFrame ??= dst;

    if (radius > 0) {
      final rad = radius.round();
      final rad2 = rad * rad;
      final x1 = x;
      final y1 = y;
      final x2 = x + width;
      final y2 = y + height;
      final c1x = x1 + rad - 1;
      final c1y = y1 + rad - 1;
      final c2x = x2 - rad + 1;
      final c2y = y1 + rad - 1;
      final c3x = x2 - rad + 1;
      final c3y = y2 - rad + 1;
      final c4x = x1 + rad - 1;
      final c4y = y2 - rad + 1;

      final iter = src.getRange(x1, y1, width, height);
      while (iter.moveNext()) {
        final p = iter.current;
        final px = p.x;
        final py = p.y;

        num a = 1;
        if (px < c1x && py < c1y) {
          a = circleTest(p, c1x, c1y, rad2, antialias: antialias);
          if (a == 0) {
            dst.setPixelRgba(p.x - x1, p.y - y1, 0, 0, 0, 0);
            continue;
          }
        } else if (px > c2x && py < c2y) {
          a = circleTest(p, c2x, c2y, rad2, antialias: antialias);
          if (a == 0) {
            dst.setPixelRgba(p.x - x1, p.y - y1, 0, 0, 0, 0);
            continue;
          }
        } else if (px > c3x && py > c3y) {
          a = circleTest(p, c3x, c3y, rad2, antialias: antialias);
          if (a == 0) {
            dst.setPixelRgba(p.x - x1, p.y - y1, 0, 0, 0, 0);
            continue;
          }
        } else if (px < c4x && py > c4y) {
          a = circleTest(p, c4x, c4y, rad2, antialias: antialias);
          if (a == 0) {
            dst.setPixelRgba(p.x - x1, p.y - y1, 0, 0, 0, 0);
            continue;
          }
        }

        if (a != 1) {
          dst.getPixel(p.x - x1, p.y - y1).setRgba(p.r, p.g, p.b, p.a * a);
        } else {
          dst.setPixel(p.x - x1, p.y - y1, p);
        }
      }
    } else {
      for (final p in dst) {
        p.set(frame.getPixel(x + p.x, y + p.y));
      }
    }
  }

  return firstFrame!;
}

/// Test if the pixel [p] is within the circle centered at [x],[y] with a
/// squared radius of [rad2]. This will test the corners, edges, and center
/// of the pixel and return the ratio of samples within the circle.
num circleTest(Pixel p, int x, int y, num rad2, {bool antialias = true}) {
  /*if (!antialias) {
    final dx1 = p.x - x;
    final dy1 = p.y - y;
    final d1 = dx1 * dx1 + dy1 * dy1;
    return d1 <= rad2 ? 1 : 0;
  }*/

  var total = 0;
  final dx1 = p.x - x;
  final dy1 = p.y - y;
  final d1 = dx1 * dx1 + dy1 * dy1;
  final r1 = d1 <= rad2 ? 1 : 0;
  total += r1;

  final dx2 = (p.x + 1) - x;
  final dy2 = p.y - y;
  final d2 = dx2 * dx2 + dy2 * dy2;
  final r2 = d2 <= rad2 ? 1 : 0;
  total += r2;

  final dx3 = (p.x + 1) - x;
  final dy3 = (p.y + 1) - y;
  final d3 = dx3 * dx3 + dy3 * dy3;
  final r3 = d3 <= rad2 ? 1 : 0;
  total += r3;

  final dx4 = p.x - x;
  final dy4 = (p.y + 1) - y;
  final d4 = dx4 * dx4 + dy4 * dy4;
  final r4 = d4 <= rad2 ? 1 : 0;
  total += r4;

  //return total / 4;

  final dx5 = (p.x + 0.5) - x;
  final dy5 = p.y - y;
  final d5 = dx5 * dx5 + dy5 * dy5;
  final r5 = d5 <= rad2 ? 1 : 0;
  total += r5;

  final dx6 = (p.x + 0.5) - x;
  final dy6 = (p.y + 1) - y;
  final d6 = dx6 * dx6 + dy6 * dy6;
  final r6 = d6 <= rad2 ? 1 : 0;
  total += r6;

  final dx7 = p.x - x;
  final dy7 = (p.y + 0.5) - y;
  final d7 = dx7 * dx7 + dy7 * dy7;
  final r7 = d7 <= rad2 ? 1 : 0;
  total += r7;

  final dx8 = (p.x + 1) - x;
  final dy8 = (p.y + 0.5) - y;
  final d8 = dx8 * dx8 + dy8 * dy8;
  final r8 = d8 <= rad2 ? 1 : 0;
  total += r8;

  final dx9 = (p.x + 0.5) - x;
  final dy9 = (p.y + 0.5) - y;
  final d9 = dx9 * dx9 + dy9 * dy9;
  final r9 = d9 <= rad2 ? 1 : 0;
  total += r9;

  return antialias
      ? total / 9
      : total > 0
          ? 1
          : 0;
}
