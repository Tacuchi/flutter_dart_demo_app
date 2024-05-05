import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dart_demo_app/examples/flutter_avanzado/authentication/pages/login_page.dart';
import 'package:flutter_dart_demo_app/examples/flutter_avanzado/slivers/pages/slivers_page.dart';

class MenuPage extends StatefulWidget {
  static const routeName = 'menu';
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                Text(
                  'Examples Menu',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 20),
                CupertinoButton.filled(
                  child: const Text('Login Example'),
                  onPressed: () {
                    Navigator.pushNamed(context, LoginPage.routeName);
                  },
                ),
                const SizedBox(height: 20),
                CupertinoButton.filled(
                  child: const Text('Slivers Example'),
                  onPressed: () {
                    Navigator.pushNamed(context, SliversPage.routeName);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
