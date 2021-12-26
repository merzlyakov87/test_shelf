class DiscountModel {
  DiscountModel({
    required this.name,
    required this.id,
  });
  late final String name;
  late final int id;

  DiscountModel.fromJson(Map<String, dynamic> json) {
    name = json['id'];
    id = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['id'] = id;
    return _data;
  }
}
