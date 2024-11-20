import 'package:json_annotation/json_annotation.dart';

part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel {
  final String? message;
  final bool? status;
  final int? code;
  final Data? data;

  LoginResponseModel({
    this.message,
    this.status,
    this.code,
    this.data,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}

@JsonSerializable()
class Data {
  final String? token;
  @JsonKey(name: 'username')
  final String? userName;

  Data({
    this.token,
    this.userName,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
