class LoadModel {
  final String id;
  final int driverId;
  final String loadedAt;
  final bool accepted;
  final String acceptedAt;
  final int? dispatchedBoxes;
  final int userId;

  LoadModel(
      {required this.id,
      required this.driverId,
      required this.loadedAt,
      required this.accepted,
      required this.acceptedAt,
      this.dispatchedBoxes,
      required this.userId});

  factory LoadModel.fromJson(Map<String, dynamic> json) {
    return LoadModel(
      id: json['id'].toString(),
      driverId: json['driver_id'],
      loadedAt: json['loaded_at'],
      accepted: json['accepted'],
      acceptedAt: json['accepted_at'] ?? '',
      dispatchedBoxes: json['dispatched_boxes'],
      userId: json['user_id'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['driver_id'] = driverId;
    data['loaded_at'] = loadedAt;
    data['accepted'] = accepted;
    data['accepted_at'] = acceptedAt;
    data['dispatched_boxes'] = dispatchedBoxes;
    data['user_id'] = userId;
    return data;
  }
}
