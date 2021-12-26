import 'package:get_it/get_it.dart';
import 'package:test_shelf/feature/test_feature/presentation/controller/test_feature_controller.dart';
import 'package:test_shelf/feature/test_feature/presentation/controller/test_feature_controller_impl.dart';
import 'package:test_shelf/feature/test_feature/presentation/router/test_feature_router.dart';

final slTestFeature = GetIt.instance;

Future<void> init() async {
  slTestFeature.registerLazySingleton<TestFeatureController>(
      () => TestFeatureControllerImpl());

  slTestFeature.registerLazySingleton(() => TestFeatureRouter(slTestFeature()));
}
