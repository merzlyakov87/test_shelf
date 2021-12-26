import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:test_shelf/feature/api/v1/discounts/domain/usecases/get_discounts.dart';
import 'package:test_shelf/feature/api/v1/discounts/domain/usecases/get_discounts_by_id.dart';
import 'package:test_shelf/feature/api/v1/discounts/presentation/controller/discount_controller.dart';

class DiscountControllerImpl extends DiscountController {
  GetDiscounts getDiscounts = GetDiscounts();
  GetDiscountsById getDiscountsById = GetDiscountsById();

  @override
  Response getAll(Request req) {
    final result = getDiscounts.call();

    return Response.ok(jsonEncode(result));
  }

  @override
  Response getDiscount(Request req, String discountId) {
    var id = int.tryParse(discountId);
    if (id == null) {
      return Response.internalServerError();
    }

    final result = getDiscountsById(id);
    if (result == null) {
      return Response.notFound('discount not found');
    }
    return Response.ok(jsonEncode(result));
  }
}
