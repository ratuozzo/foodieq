import 'package:dartz/dartz.dart';
import 'package:foodieq/domain/meal/meal.dart';
import 'package:foodieq/domain/meal/meal_failure.dart';
import 'package:foodieq/infrastructure/daos/meal/meal_dao.dart';
import 'package:foodieq/infrastructure/daos/meal/meal_exception.dart';

class MealRepository {
  MealRepository({required this.client});

  final MealDao client;

  Future<Either<MealFailure, List<Meal>>> getMeals() async {
    try {
      return Right(
        await client.getMeals(),
      );
    } on MealException catch (e) {
      return Left(
        e.map(
          unexpected: (e) => MealFailure.unexpected(e.error),
        ),
      );
    }
  }
}
