import 'package:foodieq/domain/abbreviation/abbreviation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutrition_detail.freezed.dart';
part 'nutrition_detail.g.dart';

@freezed
class NutritionDetail with _$NutritionDetail {
  factory NutritionDetail({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'unit') required String unit,
    @JsonKey(name: 'value') required int value,
    @JsonKey(name: 'valueWithPrecision') required double valueWithPrecision,
    @JsonKey(name: 'abbreviation') required Abbreviation abbreviation,
  }) = _NutritionDetail;

  factory NutritionDetail.fromJson(Map<String, dynamic> json) =>
      _$NutritionDetailFromJson(json);
}
