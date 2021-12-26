class TestModel {
  TestModel({
    required this.testString,
    required this.testInt,
  });
  late final String testString;
  late final int testInt;

  TestModel.fromJson(Map<String, dynamic> json) {
    testString = json['testString'];
    testInt = json['testInt'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['testString'] = testString;
    _data['testInt'] = testInt;
    return _data;
  }
}
