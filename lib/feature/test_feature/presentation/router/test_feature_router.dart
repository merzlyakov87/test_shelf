import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import 'package:test_shelf/core/router/base_router.dart';
import 'package:test_shelf/core/router/builder/app_router.dart';
import 'package:test_shelf/feature/test_feature/presentation/controller/test_feature_controller.dart';
import 'package:test_shelf/feature/test_feature/presentation/endpoints/test_feature_endpoint.dart';

class TestFeatureRouter extends BaseRouter {
  final TestFeatureController testFeatureController;

  TestFeatureRouter(this.testFeatureController);
  @override
  Router get router {
    final router = AppRouterBuilder().build();

    // GET /test
    router.get(
        TestFeatureEndpoint.main.getPath(), testFeatureController.getIndex);

    // GET /test/<param>
    router.get(TestFeatureEndpoint.mainParam.getPath(),
        testFeatureController.getIndexWithParam);

    // All unhandled
    router.all(TestFeatureEndpoint.all.getPath(), testFeatureController.getAll);

    return router;
  }
}
