import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'who_rules_engine.g.dart';

@riverpod
class WhoRulesEngine extends _$WhoRulesEngine {
  @override
  Future<void> load() async {
    // Charger les règles de détection des anomalies selon les normes OMS 2024
  }

  void detectAnomalies({
    required double hematocrite,
    required double hemoglobine,
    required double leucocytes,
    required double plaquettes,
  }) {
    // Implémenter les règles de détection des anomalies pour chaque paramètre
    if (hematocrite < 34 || hematocrite > 54) {
      // Anomalie détectée pour l'hématocrite
    }
    if (hemoglobine < 11 || hemoglobine > 18) {
      // Anomalie détectée pour l'hémoglobine
    }
    if (leucocytes < 4 || leucocytes > 11) {
      // Anomalie détectée pour les leucocytes
    }
    if (plaquettes < 150 || plaquettes > 450) {
      // Anomalie détectée pour les plaquettes
    }
  }
}