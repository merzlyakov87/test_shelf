import 'package:get_it/get_it.dart';
import 'package:test_shelf/core/di/middleware_injection_container.dart';
import 'package:test_shelf/core/handler/app_handler.dart';

final slHandler = GetIt.instance;

Future<void> init() async {
  slHandler.registerFactory(() => AppHandler(slMiddleware()).handler);
}
