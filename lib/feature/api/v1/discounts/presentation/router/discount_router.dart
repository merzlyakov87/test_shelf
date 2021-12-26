import 'package:shelf_router/src/router.dart';
import 'package:test_shelf/core/router/base_router.dart';
import 'package:test_shelf/core/router/builder/app_router.dart';
import 'package:test_shelf/feature/api/v1/discounts/presentation/controller/discount_controller.dart';
import 'package:test_shelf/feature/api/v1/discounts/presentation/endpoints/discount_endpoints.dart';

class DiscountRouter extends BaseRouter {
  final DiscountController discountController;

  DiscountRouter(this.discountController);

  @override
  Router get router {
    final router = AppRouterBuilder().build();

    // GET /discount
    router.get(DiscountEndpoints.getAll.getPath(), discountController.getAll);

    // GET /discount/<discountId>
    router.get(
        DiscountEndpoints.getById.getPath(), discountController.getDiscount);

    return router;
  }
}
