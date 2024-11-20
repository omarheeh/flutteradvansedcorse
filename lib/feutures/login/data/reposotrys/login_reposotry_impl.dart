import 'package:flutteradvansedcorse/core/connection/api_result.dart';
import 'package:flutteradvansedcorse/core/connection/api_serves.dart';
import 'package:flutteradvansedcorse/feutures/login/data/models/login_request_model.dart';
import 'package:flutteradvansedcorse/feutures/login/data/models/login_response_model.dart';
import 'package:flutteradvansedcorse/feutures/login/data/reposotrys/login_reposotrys.dart';

class LoginReposotryImpl implements LoginReposotrys {
  final ApiServes _apiServes;
  LoginReposotryImpl(this._apiServes);

  @override
  Future<ApiResult<LoginResponseModel>> login(
      LoginRequestModel loginRequestModel) async {
    try {
      LoginResponseModel result = await _apiServes.login(loginRequestModel);
      return ApiResult.sucsess(result);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}
