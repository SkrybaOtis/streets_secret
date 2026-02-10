import 'dart:io';
import 'package:path_provider/path_provider.dart';

Future<String> getAppSupportPath() async {
  final Directory directory = await getApplicationSupportDirectory();
  return directory.path;
}

Future<String> getAppCachePath() async {
  final Directory directory = await getApplicationCacheDirectory();
  return directory.path;
}

Future<String> getAppDocsPath() async {
  final Directory directory = await getApplicationDocumentsDirectory();
  return directory.path;
}
