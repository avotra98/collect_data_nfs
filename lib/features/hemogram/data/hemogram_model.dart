import 'package:freezed/freezed.dart';
import 'package:json_annotation/json_annotation.dart';

part 'hemogram_model.freezed.dart';
part 'hemogram_model.g.dart';

@freezed
class Hemogram with _$Hemogram {
  const factory Hemogram({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'hemoglobin') double? hemoglobin,
    @JsonKey(name: 'hematocrit') double? hematocrit,
    @JsonKey(name: 'leukocytes') double? leukocytes,
    @JsonKey(name: 'platelets') double? platelets,
  }) = _Hemogram;

  factory Hemogram.fromJson(Map<String, dynamic> json) => _$HemogramFromJson(json);
}