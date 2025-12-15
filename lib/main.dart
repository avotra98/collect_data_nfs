import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:your_app/providers/theme_provider.dart';
import 'package:your_app/providers/language_provider.dart';
import 'package:your_app/screens/home_screen.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final language = ref.watch(languageProvider);

    return MaterialApp(
      title: 'Your App',
      theme: theme,
      locale: language,
      home: HomeScreen(),
    );
  }
}