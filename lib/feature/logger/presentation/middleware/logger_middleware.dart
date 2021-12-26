import 'package:shelf/shelf.dart';
import 'package:test_shelf/core/middleware/middleware.dart';

abstract class LoggerMiddleware extends BaseMiddleware {
  //TODO: add option custom logger on logRequests(logger)
  @override
  Middleware get middleware {
    return logRequests();
  }
}
