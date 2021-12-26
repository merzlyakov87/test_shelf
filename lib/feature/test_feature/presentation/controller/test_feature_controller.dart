import 'package:shelf/shelf.dart';

abstract class TestFeatureController {
  Response getIndex(Request req);
  Response getIndexWithParam(Request req, String param);
  Response getAll(Request req);
}
