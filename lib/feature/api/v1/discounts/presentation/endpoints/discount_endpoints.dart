enum DiscountEndpoints { getAll, getById }

extension TestFeatureEndpointExtension on DiscountEndpoints {
  String getPath() {
    switch (this) {
      case DiscountEndpoints.getAll:
        return '/';

      case DiscountEndpoints.getById:
        return '/<discountId|[0-9]+>';
    }
  }
}
