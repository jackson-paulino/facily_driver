import 'package:dio/dio.dart';
import 'package:facily_driver/shared/app_url.dart';

BaseOptions options = BaseOptions(
    baseUrl: AppUri.baseUri(), connectTimeout: 3000, receiveTimeout: 3000);

var dio = Dio(options);
