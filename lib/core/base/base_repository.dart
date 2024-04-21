import 'package:dio/dio.dart';
import 'package:myapp/core/error/network_exceptions.dart';
import 'package:retrofit/retrofit.dart';

class BaseRepository {
  final RestApi remoteDataSource;

  BaseRepository(
    this.remoteDataSource,
  );

  
}
