import 'package:facily_driver/data/exceptions/pendency_exceptions.dart';
import 'package:facily_driver/data/exceptions/truckload_exceptions.dart';
import 'package:facily_driver/data/exceptions/user_exception.dart';
import 'package:facily_driver/data/models/truckload_model.dart';
import 'package:facily_driver/data/models/pendency_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:facily_driver/data/models/user_driver_model.dart';
import 'package:facily_driver/data/repositories/driver_repository_interface.dart';

abstract class HomeState {}

class LoadingHomeState extends HomeState {}

class FinishedHomeState extends HomeState {
  UserDriverModel user;
  PendencyModel dependency;
  TruckloadModel truckload;
  FinishedHomeState(this.user, this.dependency, this.truckload);
}

class FailHomeState extends HomeState {}

class HomeCubit extends Cubit<HomeState> {
  final DriverRepositoryInterface _driverRepository;

  HomeCubit(this._driverRepository) : super(LoadingHomeState());

  Future<void> getUser() async {
    try {
      emit(LoadingHomeState());
      var respUser = await _driverRepository.getUser();
      var respPendecy = await _driverRepository.getPendency(respUser!.id);
      var respTruckload = await _driverRepository.getTruckload(respUser.id);
      emit(FinishedHomeState(respUser, respPendecy!, respTruckload!));
    } on UserExceptions {
      emit(FailHomeState());
    } on TruckloadExceptions {
      emit(FailHomeState());
    } on PendenciesExceptions {
      emit(FailHomeState());
    } on Exception {
      emit(FailHomeState());
    }
  }
}
