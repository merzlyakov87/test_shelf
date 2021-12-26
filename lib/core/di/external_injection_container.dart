import 'package:get_it/get_it.dart';
import 'package:shelf/shelf.dart';

final slExternal = GetIt.instance;

Future<void> init() async {
  //slExternalMiddleware.registerFactory(() => null);
  slExternal.registerFactory(() => logRequests());
}
