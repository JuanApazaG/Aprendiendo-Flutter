import 'package:flutter/material.dart';
import 'dart:async';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      final args = ModalRoute.of(context)!.settings.arguments as String;
      final fakeResult = "Detectamos: Mildiu. Recomendación: aplicar fungicida.";

      Navigator.pushReplacementNamed(
        context,
        '/result',
        arguments: {'imagePath': args, 'result': fakeResult},
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
