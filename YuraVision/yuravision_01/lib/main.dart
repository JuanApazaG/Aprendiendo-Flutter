import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:yuravision_01/firebase_options.dart';

import 'pages/home_page.dart';
import 'pages/loading_page.dart';
import 'pages/result_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YuraVision',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      initialRoute: '/',
      routes: {
        '/': (_) => const HomePage(),
        '/loading': (_) => const LoadingPage(),
        '/result': (_) => const ResultPage(),
      },
    );
  }
}