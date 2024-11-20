import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result.freezed.dart';

@freezed
sealed class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.sucsess(T result) = Sucsess<T>;
  const factory ApiResult.failure(String errMessage) = Failure<T>;
}
