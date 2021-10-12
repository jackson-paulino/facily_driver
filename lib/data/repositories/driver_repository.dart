import 'package:dio/dio.dart';
import 'package:facily_driver/data/models/truckload_model.dart';
import 'package:facily_driver/data/models/pendency_model.dart';
import 'package:facily_driver/data/models/user_driver_model.dart';
import 'package:facily_driver/data/repositories/driver_repository_interface.dart';
import 'package:facily_driver/data/services/dio_service.dart';
import 'package:facily_driver/shared/app_url.dart';

class DriverRepository extends DriverRepositoryInterface {
  final DioService _dioService;
  final AppUri _appUri = AppUri();

  DriverRepository(this._dioService);

  @override
  Future<UserDriverModel?> getUser() async {
    Response resp = await _dioService.getRequest(_appUri.isUser(),
        headers: _appUri.isHeadersToken());

    if (resp.statusCode == 200) {
      var user = UserDriverModel.fromJson(resp.data);
      return user;
    }
    return null;
  }

  @override
  Future<PendencyModel?> getPendency(String idUser) async {
    Response resp = await _dioService.getRequest(_appUri.isPendency(),
        headers: _appUri.isHeadersToken(), params: {'driver_id': idUser});

    if (resp.statusCode == 200) {
      var pendency = PendencyModel.fromJson(resp.data);
      return pendency;
    }
    return null;
  }

  @override
  Future<TruckloadModel?> getTruckload(String idUser) async {
    Response resp = await _dioService.getRequest(_appUri.isShipments(),
        headers: _appUri.isHeadersToken(), params: {'driver_id': idUser});

    if (resp.statusCode == 200) {
      var loads = TruckloadModel.fromJson(resp.data);

      return loads;
    }
    return null;
  }
}
