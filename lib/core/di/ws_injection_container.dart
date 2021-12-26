import 'package:get_it/get_it.dart';
import 'package:test_shelf/feature/ws/presentation/web_socket_handler.dart';

final slWs = GetIt.instance;

Future<void> init() async {
  slWs.registerFactory(() => WebSocketHandler());
}
