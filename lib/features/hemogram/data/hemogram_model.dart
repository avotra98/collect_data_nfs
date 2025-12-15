part 'hemogram_model.freezed.dart';
part 'hemogram_model.g.dart';

import 'package:freezed/freezed.dart';
import 'package:json_annotation/json_annotation.dart';

@freezed
class Hemogram with _$Hemogram {
  const factory Hemogram({
    @JsonKey('id') required String id,
    @JsonKey('patientId') required String patientId,
    @JsonKey('hemoglobin') required double hemoglobin,
    @JsonKey('hematocrit') required double hematocrit,
    @JsonKey('leukocytes') required double leukocytes,
    @JsonKey('erythrocytes') required double erythrocytes,
    @JsonKey('platelets') required double platelets,
    @JsonKey('createdAt') required DateTime createdAt,
  }) = _Hemogram;

  factory Hemogram.fromJson(Map<String, dynamic> json) => _$HemogramFromJson(json);
}