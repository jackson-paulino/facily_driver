class PendencyModel {
  final bool blocklisted;
  final int boxes;
  final List<int> orders;

  PendencyModel(
      {required this.blocklisted, required this.boxes, required this.orders});

  factory PendencyModel.fromJson(Map<String, dynamic> json) {
    return PendencyModel(
      blocklisted: json['blocklisted'],
      boxes: json['boxes'],
      orders: json['orders'].cast<int>(),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['blocklisted'] = blocklisted;
    data['boxes'] = boxes;
    data['orders'] = orders;
    return data;
  }
}
