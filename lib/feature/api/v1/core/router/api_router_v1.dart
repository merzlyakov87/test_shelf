import 'package:shelf_router/shelf_router.dart';
import 'package:test_shelf/core/router/base_router.dart';
import 'package:test_shelf/core/router/builder/app_router.dart';
import 'package:test_shelf/feature/api/v1/core/endpoints/api_endpoint_v1.dart';
import 'package:test_shelf/feature/api/v1/discounts/presentation/router/discount_router.dart';

class ApiRouterV1 extends BaseRouter {
  final DiscountRouter discountRouter;

  ApiRouterV1(this.discountRouter);

  @override
  Router get router {
    final router = AppRouterBuilder().build();

    router.mount(ApiEndpointV1.discount.getPath(), discountRouter.router);

    return router;
  }
}
