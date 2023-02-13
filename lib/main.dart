import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main.g.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

@riverpod
FutureOr<int> getNumber(GetNumberRef ref) async {
  final results = await Future.delayed(const Duration(seconds: 1));
  return results;
}

@riverpod
class GetAnotherNumber extends _$GetAnotherNumber {
  @override
  Future<int> build() async => await Future.delayed(const Duration(seconds: 1));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
