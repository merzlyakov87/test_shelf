import 'package:shelf_router/shelf_router.dart';

import 'package:test_shelf/core/router/base_router.dart';
import 'package:test_shelf/core/router/builder/app_router.dart';
import 'package:test_shelf/feature/api/core/endpoints/api_endpoint.dart';
import 'package:test_shelf/feature/api/v1/core/router/api_router_v1.dart';

class ApiCoreRouter extends BaseRouter {
  ApiRouterV1 apiRouterV1;
  ApiCoreRouter(
    this.apiRouterV1,
  );
  @override
  Router get router {
    final router = AppRouterBuilder().build();

    router.mount(ApiEndpoint.v1.getPath(), apiRouterV1.router);
    return router;
  }
}
