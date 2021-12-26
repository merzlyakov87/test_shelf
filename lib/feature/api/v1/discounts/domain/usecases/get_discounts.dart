import 'package:test_shelf/feature/api/v1/discounts/data/discount_model.dart';

class GetDiscounts {
  List<DiscountModel> call() {
    return [
      DiscountModel(name: 'AquaSpectr', id: 1),
      DiscountModel(name: 'AquaFresh', id: 2)
    ];
  }
}
