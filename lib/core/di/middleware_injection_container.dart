import 'package:get_it/get_it.dart';
import 'package:test_shelf/feature/logger/presentation/middleware/logger_middleware.dart';
import 'package:test_shelf/feature/logger/presentation/middleware/logger_middleware_impl.dart';

final slMiddleware = GetIt.instance;
Future<void> init() async {
  slMiddleware
      .registerLazySingleton<LoggerMiddleware>(() => LoggerMiddlewareImpl());
}
