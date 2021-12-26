import 'package:shelf/shelf.dart';
import 'package:test_shelf/feature/logger/presentation/middleware/logger_middleware.dart';

class LoggerMiddlewareImpl extends LoggerMiddleware {
  @override
  Middleware get middleware {
    return logRequests();
  }
}
