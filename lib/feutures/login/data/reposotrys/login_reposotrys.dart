import 'package:flutteradvansedcorse/core/connection/api_result.dart';
import 'package:flutteradvansedcorse/feutures/login/data/models/login_request_model.dart';
import 'package:flutteradvansedcorse/feutures/login/data/models/login_response_model.dart';

abstract class LoginReposotrys {
  Future<ApiResult<LoginResponseModel>> login(
      LoginRequestModel loginRequestModel);
}
