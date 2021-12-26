enum TestFeatureEndpoint { main, mainParam, all }

extension TestFeatureEndpointExtension on TestFeatureEndpoint {
  String getPath() {
    switch (this) {
      case TestFeatureEndpoint.main:
        return '/';
      case TestFeatureEndpoint.mainParam:
        return '/<param>';
      case TestFeatureEndpoint.all:
        return '/<ignored|.*>';
    }
  }
}
