import 'package:shelf_router/shelf_router.dart';
import 'package:test_shelf/core/router/builder/base_router_builder.dart';

class AppRouterBuilder extends BaseRouterBuilder {
  late final Router router;

  AppRouterBuilder() {
    router = Router();
  }

  @override
  AppRouterBuilder addRouter(String prefix, Router router) {
    router.mount(prefix, router);
    return this;
  }

  @override
  Router build() {
    return router;
  }
}
