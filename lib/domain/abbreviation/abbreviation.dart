import 'package:freezed_annotation/freezed_annotation.dart';

part 'abbreviation.freezed.dart';

@freezed
class Abbreviation with _$Abbreviation {
  factory Abbreviation({
    @JsonKey(name: 'unit') required String unit,
    @JsonKey(name: 'nutrient') required String nutrient,
  }) = _Abbreviation;
}
