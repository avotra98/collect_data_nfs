import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:your_app/features/hemogram/application/hemogram_controller.dart';
import 'package:your_app/features/hemogram/presentation/widgets/hemogram_form_field.dart';

class HemogramForm extends ConsumerWidget {
  const HemogramForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hemogramController = ref.watch(hemogramControllerProvider);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          HemogramFormField(
            label: 'Hémoglobine (g/dL)',
            controller: hemogramController.hemoglobinController,
          ),
          const SizedBox(height: 16),
          HemogramFormField(
            label: 'Hématocrite (%)',
            controller: hemogramController.hematocritController,
          ),
          const SizedBox(height: 16),
          HemogramFormField(
            label: 'Leucocytes (10^9/L)',
            controller: hemogramController.leukocytesController,
          ),
          const SizedBox(height: 16),
          HemogramFormField(
            label: 'Neutrophiles (10^9/L)',
            controller: hemogramController.neutrophilsController,
          ),
          const SizedBox(height: 16),
          HemogramFormField(
            label: 'Lymphocytes (10^9/L)',
            controller: hemogramController.lymphocytesController,
          ),
          const SizedBox(height: 16),
          HemogramFormField(
            label: 'Monocytes (10^9/L)',
            controller: hemogramController.monocytesController,
          ),
          const SizedBox(height: 16),
          HemogramFormField(
            label: 'Éosinophiles (10^9/L)',
            controller: hemogramController.eosinophilsController,
          ),
          const SizedBox(height: 16),
          HemogramFormField(
            label: 'Basophiles (10^9/L)',
            controller: hemogramController.basophilsController,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              hemogramController.saveHemogram();
            },
            child: const Text('Enregistrer'),
          ),
        ],
      ),
    );
  }
}