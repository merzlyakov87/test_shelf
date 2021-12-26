enum ApiEndpointV1 { main, discount, category }

extension ApiEndpointExtension on ApiEndpointV1 {
  String getPath() {
    switch (this) {
      case ApiEndpointV1.main:
        return '/';
      case ApiEndpointV1.category:
        return '/category';
      case ApiEndpointV1.discount:
        return '/discount';
    }
  }
}
