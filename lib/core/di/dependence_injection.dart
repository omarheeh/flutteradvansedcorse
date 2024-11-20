import 'package:dio/dio.dart';
import 'package:flutteradvansedcorse/core/connection/api_serves.dart';
import 'package:flutteradvansedcorse/core/connection/dio_factory.dart';
import 'package:flutteradvansedcorse/feutures/login/data/reposotrys/login_reposotry_impl.dart';
import 'package:flutteradvansedcorse/feutures/login/data/reposotrys/login_reposotrys.dart';
import 'package:flutteradvansedcorse/feutures/login/logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.instance;

void setup() async {
  Dio dio = await DioFactory.getDio();
  di.registerLazySingleton<ApiServes>(() => ApiServes(dio));
  di.registerLazySingleton<LoginReposotrys>(() => LoginReposotryImpl(di()));
  di.registerFactory<LoginCubit>(() => LoginCubit(di()));
}
