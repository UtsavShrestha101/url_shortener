import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:myapp/core/dependency_injection/dl.config.dart';


final get = GetIt.instance;

@InjectableInit()
FutureOr<GetIt> configureDependencies() => get.init();

@module
abstract class RegisterModule {
  @singleton
  Dio get dio => Dio();

 
}
