import 'package:dio/dio.dart';
import 'package:foodieq/domain/meal/meal.dart';
import 'package:foodieq/infrastructure/daos/meal/meal_exception.dart';
import 'package:foodieq/network/dio_client.dart';

abstract class MealDao {
  Future<List<Meal>> getMeals();
}

class MealDaoImpl implements MealDao {
  const MealDaoImpl({required this.client});

  final DioClient client;

  @override
  Future<List<Meal>> getMeals() async {
    try {
      Response response = await client.dio.get('meals/');
      List<Meal> output = [];
      for (var json in response.data['meals']) {
        output.add(Meal.fromJson(json));
      }
      return output;
    } catch (e) {
      throw MealException.unexpected(e);
    }
  }
}
