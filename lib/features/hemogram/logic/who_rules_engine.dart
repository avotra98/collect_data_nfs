import 'package:riverpod/riverpod.dart';

class WhoRulesEngine {
  final List<Map<String, dynamic>> _rules = [
    // Exemple de règle : Hémoglobine (Hb) inférieure à 13,5 g/dL pour les hommes et 12 g/dL pour les femmes
    {
      'parameter': 'Hb',
      'threshold': {
        'male': 13.5,
        'female': 12,
      },
      'operator': 'lessThan',
    },
    // Ajouter d'autres règles ici...
  ];

  List<String> evaluate(Map<String, dynamic> hemogram) {
    final anomalies = <String>[];

    for (final rule in _rules) {
      final parameter = rule['parameter'];
      final threshold = rule['threshold'];
      final operator = rule['operator'];

      final value = hemogram[parameter];
      final sex = hemogram['sex'];

      final thresholdValue = threshold[sex];

      if (operator == 'lessThan' && value < thresholdValue) {
        anomalies.add('$parameter est anormalement bas ($value)');
      } else if (operator == 'greaterThan' && value > thresholdValue) {
        anomalies.add('$parameter est anormalement élevé ($value)');
      }
    }

    return anomalies;
  }
}

final whoRulesEngineProvider = Provider<WhoRulesEngine>((ref) {
  return WhoRulesEngine();
});