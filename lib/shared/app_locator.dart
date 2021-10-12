import 'package:facily_driver/data/repositories/driver_repository.dart';
import 'package:facily_driver/data/repositories/driver_repository_interface.dart';
import 'package:facily_driver/data/services/dio_service.dart';
import 'package:get_it/get_it.dart';

var getIt = GetIt.instance;

void setUpLocator() {
  getIt.registerLazySingleton(() => DioService());

  getIt.registerLazySingleton<DriverRepositoryInterface>(
      () => DriverRepository(getIt.get<DioService>()));
}
