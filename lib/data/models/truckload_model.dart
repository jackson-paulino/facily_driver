import 'package:facily_driver/data/models/load_model.dart';

class TruckloadModel {
  List<LoadModel> items;
  int total;
  int page;
  int size;

  TruckloadModel(
      {required this.items,
      required this.total,
      required this.page,
      required this.size});

  factory TruckloadModel.fromJson(Map<String, dynamic> json) {
    var list = <LoadModel>[];
    if (json['items'] != null) {
      json['items'].forEach((v) {
        list.add(LoadModel.fromJson(v));
      });
    }
    return TruckloadModel(
      total: json['total'],
      page: json['page'],
      size: json['size'],
      items: list,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (items.isEmpty) {
      data['items'] = items.map((v) => v.toJson()).toList();
    }
    data['total'] = total;
    data['page'] = page;
    data['size'] = size;
    return data;
  }
}
