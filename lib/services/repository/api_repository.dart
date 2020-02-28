import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_quick_start/services/repository/repository_service.dart';

class ApiRepository extends RepositoryService {
  final Dio dio;

  ApiRepository({@required this.dio}) : assert(dio != null);
}
