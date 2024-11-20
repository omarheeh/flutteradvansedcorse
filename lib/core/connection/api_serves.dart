import 'package:dio/dio.dart';
import 'package:flutteradvansedcorse/core/connection/api_constants.dart';
import 'package:flutteradvansedcorse/feutures/login/data/models/login_request_model.dart';
import 'package:flutteradvansedcorse/feutures/login/data/models/login_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'api_serves.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiServes {
  factory ApiServes(Dio dio, {String baseUrl}) = _ApiServes;

  @POST(ApiConstants.login)
  Future<LoginResponseModel> login(@Body() LoginRequestModel body);
}
