import 'package:flutter/material.dart';

class ProgresScreen extends StatelessWidget {
  static const String name = 'progress';
  const ProgresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Progresso Screen')),
      body: const Center(child: Text('Progresso Screen')),
    );
  }
}
