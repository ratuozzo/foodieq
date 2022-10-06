import 'package:foodieq/domain/nutrition/nutrition.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient.freezed.dart';

@freezed
class Ingredient with _$Ingredient {
  factory Ingredient({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'nutrition') required Nutrition nutrition,
  }) = _Ingredient;
}
