import 'package:get_it/get_it.dart';
import 'package:test_shelf/feature/api/core/router/api_core_router.dart';
import 'package:test_shelf/feature/api/v1/core/router/api_router_v1.dart';
import 'package:test_shelf/feature/api/v1/discounts/presentation/controller/discount_controller.dart';
import 'package:test_shelf/feature/api/v1/discounts/presentation/controller/discount_controller_impl.dart';
import 'package:test_shelf/feature/api/v1/discounts/presentation/router/discount_router.dart';

final slApi = GetIt.instance;

Future<void> init() async {
  slApi.registerLazySingleton<DiscountController>(
      () => DiscountControllerImpl());
  slApi.registerLazySingleton(() => DiscountRouter(slApi()));
  slApi.registerLazySingleton(() => ApiRouterV1(slApi()));
  slApi.registerLazySingleton(() => ApiCoreRouter(slApi()));
}
