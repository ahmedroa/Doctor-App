import 'package:dio/dio.dart';
import 'package:doctor/features/login/data/repo/login_repo.dart';
import 'package:doctor/features/login/logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

/// we put all our dependency injection in this function
Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = await DioFactory.getDio();
  GetIt.instance.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Login
  GetIt.instance.registerLazySingleton<LoginRepo>(
    () => LoginRepo(getIt()),
  );
  GetIt.instance.registerLazySingleton<LoginCubit>(
    () => LoginCubit(getIt()),
  );
}
