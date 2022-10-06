import 'package:foodieq/injection/meal_injector.dart';
import 'package:foodieq/network/dio_client.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void initializeDependencies() {
  //! Network
  getIt.registerLazySingleton<DioClient>(() => DioClient());

  //! Domain
  mealInjector();
}
