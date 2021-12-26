enum ApiEndpoint { v1 }

extension ApiEndpointExtension on ApiEndpoint {
  String getPath() {
    switch (this) {
      case ApiEndpoint.v1:
        return '/v1';
    }
  }
}
