import 'package:foodieq/application/meals/meals_cubit.dart';
import 'package:foodieq/infrastructure/daos/meal/meal_dao.dart';
import 'package:foodieq/infrastructure/repositories/meal/meal_repository.dart';
import 'package:get_it/get_it.dart';

final _getIt = GetIt.instance;

void mealInjector() {
  //! Application
  _getIt.registerLazySingleton<MealsCubit>(
    () => MealsCubit(
      repository: _getIt(),
    ),
  );

  //! Repository
  _getIt.registerLazySingleton<MealRepository>(
    () => MealRepository(
      client: _getIt(),
    ),
  );

  //! Dao
  _getIt.registerLazySingleton<MealDao>(
    () => MealDaoImpl(
      client: _getIt(),
    ),
  );
}
