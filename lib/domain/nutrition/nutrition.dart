import 'package:foodieq/domain/abbreviation/abbreviation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutrition.freezed.dart';

@freezed
class Nutrition with _$Nutrition {
  factory Nutrition({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'unit') required String unit,
    @JsonKey(name: 'value') required int value,
    @JsonKey(name: 'valueWithPrecision') required double valueWithPrecision,
    @JsonKey(name: 'abbreviation') required Abbreviation abbreviation,
  }) = _Nutrition;
}
