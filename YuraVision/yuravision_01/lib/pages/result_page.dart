import 'package:flutter/material.dart';
import 'dart:io';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    final imagePath = args['imagePath'];
    final result = args['result'];

    return Scaffold(
      appBar: AppBar(title: const Text("Resultado")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.file(File(imagePath), height: 200),
            const SizedBox(height: 20),
            Text(
              result,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
