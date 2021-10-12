import 'package:facily_driver/data/models/truckload_model.dart';
import 'package:facily_driver/data/models/pendency_model.dart';
import 'package:facily_driver/data/models/user_driver_model.dart';

abstract class DriverRepositoryInterface {
  Future<UserDriverModel?> getUser();

  Future<PendencyModel?> getPendency(String idUser);

  Future<TruckloadModel?> getTruckload(String idUser);
}
