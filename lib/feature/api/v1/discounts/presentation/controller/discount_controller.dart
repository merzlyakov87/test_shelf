import 'package:shelf/shelf.dart';

abstract class DiscountController {
  Response getAll(Request req);
  Response getDiscount(Request req, String discountId);
}
