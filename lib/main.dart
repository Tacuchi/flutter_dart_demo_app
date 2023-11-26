import 'package:flutter/material.dart';
import 'package:flutter_dart_demo_app/examples/flutter_avanzado/pages/login_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0x0000BFA6),
      ),
      home: const LoginPage(),
    );
  }
}
