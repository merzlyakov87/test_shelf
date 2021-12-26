import 'package:test_shelf/core/config/my_backend_config.dart';
import 'package:test_shelf/core/di/handler_injection_container.dart'
    as di_handler;
import 'package:test_shelf/core/di/external_injection_container.dart'
    as di_external;
import 'package:test_shelf/core/di/middleware_injection_container.dart'
    as di_middleware;
import 'package:test_shelf/core/di/test_feature_injection_container.dart'
    as di_test_feature;
import 'package:test_shelf/core/di/api_injection_container.dart'
    as di_api_feature;
import 'package:test_shelf/core/di/ws_injection_container.dart' as di_ws;

import 'package:test_shelf/test_shelf.dart';

void main(List<String> arguments) async {
  // TODO: MyBackendConfig.fromEnv && MyBackendConfig.fromArgs
  final config = MyBackendConfig('localhost', 8080);
  await initApp();
  await MyBackend(config, di_handler.slHandler()).serve();
}

Future<void> initApp() async {
  await di_external.init();
  await di_middleware.init();
  await di_test_feature.init();
  await di_api_feature.init();
  await di_ws.init();
  await di_handler.init();
}
