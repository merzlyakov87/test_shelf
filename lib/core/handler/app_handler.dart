import 'package:shelf/shelf.dart';
import 'package:shelf/src/handler.dart';
import 'package:shelf/src/middleware.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:test_shelf/core/di/api_injection_container.dart';

import 'package:test_shelf/core/di/test_feature_injection_container.dart';
import 'package:test_shelf/core/di/ws_injection_container.dart';
import 'package:test_shelf/core/endpoints/app_endpoints.dart';
import 'package:test_shelf/core/handler/base_handler.dart';
import 'package:test_shelf/feature/api/core/router/api_core_router.dart';
import 'package:test_shelf/feature/logger/presentation/middleware/logger_middleware.dart';
import 'package:test_shelf/feature/test_feature/presentation/router/test_feature_router.dart';
import 'package:test_shelf/feature/ws/presentation/web_socket_handler.dart';

class AppHandler extends BaseHandler {
  LoggerMiddleware logger;
  AppHandler(
    this.logger,
  );

  @override
  Handler get handler {
    final router = Router();

    //TODO: remove hard code
    router.get('/', (Request request) {
      return Response.ok('test');
    });

    /* /test endpoints */
    router.mount(
        AppEndpoints.test.getPath(), slTestFeature<TestFeatureRouter>().router);

    /* /api endpoints */
    router.mount(AppEndpoints.api.getPath(), slApi<ApiCoreRouter>().router);

    /* /ws websocketserver */

    router.mount('/ws', slWs<WebSocketHandler>().handler);

    return Pipeline().addMiddleware(logger.middleware).addHandler(router);
  }
}
