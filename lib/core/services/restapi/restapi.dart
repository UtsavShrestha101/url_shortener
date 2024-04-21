import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:myapp/core/services/restapi/generated_url.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;
part 'restapi.g.dart';

@singleton
@RestApi()
abstract class RestApiService {
  @factoryMethod
  factory RestApiService(Dio dio) =>
      _RestApiService(dio, baseUrl: "https://api.rebrandly.com");

  @POST('/v1/links')
  Future<GeneratorDetailEntity> generateLink(
    @Body() Map<String, dynamic> params, {
    @Header('Content-Type') String contentType = "application/json",
    @Header('apikey') String apikey = "5ec522d234584dee9adae4fe6f02e7e4",
    @Header('accept') String accept = "application/json",
  });
}
