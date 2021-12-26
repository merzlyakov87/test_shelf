import 'package:test_shelf/feature/api/v1/discounts/data/discount_model.dart';

class GetDiscountsById {
  DiscountModel? call(int id) {
    final list = [
      DiscountModel(name: 'AquaSpectr', id: 1),
      DiscountModel(name: 'AquaFresh', id: 2)
    ];
    var result = list.where((element) => element.id == id);
    return result.isNotEmpty ? result.first : null;
  }
}
