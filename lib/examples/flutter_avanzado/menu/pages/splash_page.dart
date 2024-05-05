import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dart_demo_app/examples/flutter_avanzado/menu/pages/menu_page.dart';

class SplashPage extends StatefulWidget {
  static const routeName = 'splash';
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushNamed(context, MenuPage.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: CupertinoActivityIndicator(
        animating: true,
      )),
    );
  }
}
