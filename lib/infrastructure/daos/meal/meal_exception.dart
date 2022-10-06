// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_exception.freezed.dart';

@freezed
class MealException with _$MealException {
  const factory MealException.unexpected(dynamic error) = Unexpected;
}
