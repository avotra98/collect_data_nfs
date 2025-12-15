part 'hemogram_model.freezed.dart';
part 'hemogram_model.g.dart';

@freezed
class Hemogram with _$Hemogram {
  const factory Hemogram({
    required String id,
    required String patientId,
    required String date,
    required double hematocrite,
    required double hemoglobine,
    required double teneurEnGlobulesRouges,
    required double teneurEnGlobulesBlancs,
    required double teneurEnPlaquettes,
  }) = _Hemogram;

  factory Hemogram.fromJson(Map<String, dynamic> json) => _$HemogramFromJson(json);
}