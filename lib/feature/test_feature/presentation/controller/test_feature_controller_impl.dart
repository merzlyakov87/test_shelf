import 'package:shelf/shelf.dart';
import 'package:test_shelf/feature/test_feature/presentation/controller/test_feature_controller.dart';

class TestFeatureControllerImpl extends TestFeatureController {
  @override
  Response getIndex(Request req) {
    //TODO: call UseCase or Service!
    return Response.ok("testFeatureController");
  }

  @override
  Response getAll(Request req) {
    return Response.ok("testFeatureController1");
  }

  @override
  Response getIndexWithParam(Request req, String param) {
    print('call getIndexWithParam');
    return Response.ok(param);
  }
}
