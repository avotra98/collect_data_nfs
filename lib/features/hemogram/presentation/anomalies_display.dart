import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:your_app/features/hemogram/presentation/controllers/anomalies_controller.dart';
import 'package:your_app/features/hemogram/presentation/widgets/anomaly_item.dart';

class AnomaliesDisplay extends ConsumerWidget {
  const AnomaliesDisplay({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final anomalies = ref.watch(anomaliesController);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Anomalies détectées'),
      ),
      body: anomalies.when(
        data: (anomaliesData) {
          if (anomaliesData.isEmpty) {
            return const Center(
              child: Text('Aucune anomalie détectée'),
            );
          }

          return ListView.builder(
            itemCount: anomaliesData.length,
            itemBuilder: (context, index) {
              return AnomalyItem(anomaly: anomaliesData[index]);
            },
          );
        },
        error: (error, _) {
          return Center(
            child: Text('Erreur : $error'),
          );
        },
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}