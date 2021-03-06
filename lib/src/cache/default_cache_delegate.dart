import 'dart:typed_data';

import 'package:ok_image/ok_image.dart';
import 'package:ok_image/src/cache/cache_manager.dart';

Future<Uint8List> defaultCache(String url, DefaultFuture createDefaultFuture, {bool followRedirects}) async {
  var icm = ImageCacheManager();
  await icm.init();
  return icm.getImageBytes(url);
}
