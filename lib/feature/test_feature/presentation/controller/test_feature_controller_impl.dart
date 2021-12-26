import 'package:shelf/shelf.dart';
import 'package:test_shelf/feature/test_feature/presentation/controller/test_feature_controller.dart';

class TestFeatureControllerImpl extends TestFeatureController {
  @override
  Response getIndex(Request req) {
    //TODO: call UseCase or Service!
    print('call getIndex');
    return Response.ok("testFeatureController");
  }

  @override
  Response getAll(Request req) {
    print('call getAll');
    return Response.ok("testFeatureController1");
    // return Response.notFound('not found');
  }

  @override
  Response getIndexWithParam(Request req, String param) {
    print('call getIndexWithParam');
    return Response.ok(param);
  }
}
