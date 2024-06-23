import 'package:flutter/material.dart';
import 'package:flutter_dart_demo_app/examples/flutter_avanzado/authentication/pages/login_page.dart';
import 'package:flutter_dart_demo_app/examples/flutter_avanzado/menu/pages/menu_page.dart';
import 'package:flutter_dart_demo_app/examples/flutter_avanzado/menu/pages/splash_page.dart';
import 'package:flutter_dart_demo_app/examples/flutter_avanzado/slivers/pages/slivers_page.dart';

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
      home: const SplashPage(),
      routes: {
        SplashPage.routeName: (_) => const SplashPage(),
        MenuPage.routeName: (_) => const MenuPage(),
        LoginPage.routeName: (_) => const LoginPage(),
        SliversPage.routeName: (_) => const SliversPage(),
      },
    );
  }
}
