enum AppEndpoints { test, api }

extension TestFeatureEndpointExtension on AppEndpoints {
  String getPath() {
    switch (this) {
      case AppEndpoints.test:
        return '/test';
      case AppEndpoints.api:
        return '/api';
    }
  }
}
