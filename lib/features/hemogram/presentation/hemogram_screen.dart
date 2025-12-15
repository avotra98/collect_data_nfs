import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:your_app/features/hemogram/presentation/controllers/hemogram_controller.dart';
import 'package:your_app/features/hemogram/presentation/widgets/hemogram_form.dart';
import 'package:your_app/features/hemogram/presentation/widgets/anomalies_list.dart';

class HemogramScreen extends ConsumerWidget {
  const HemogramScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hemogramController = ref.watch(hemogramControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hémogramme'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            HemogramForm(),
            const SizedBox(height: 16),
            AnomaliesList(),
          ],
        ),
      ),
    );
  }
}