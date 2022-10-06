// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_failure.freezed.dart';

@freezed
class MealFailure with _$MealFailure {
  const factory MealFailure.unexpected(dynamic error) = _Unexpected;
}
