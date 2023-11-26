import 'package:flutter/material.dart';
import 'package:flutter_dart_demo_app/examples/flutter_avanzado/utils/responsive.dart';
import 'package:flutter_dart_demo_app/examples/flutter_avanzado/widgets/login_form.dart';
import 'package:flutter_dart_demo_app/examples/flutter_avanzado/widgets/welcome.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: OrientationBuilder(
              builder: (context, orientation) {
                if (orientation == Orientation.portrait) {
                  return _portraitView(responsive);
                } else {
                  return _landscapeView(responsive);
                }
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _portraitView(Responsive responsive) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: SizedBox(
        height: responsive.height,
        child: const Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Welcome(),
            LoginForm(),
            Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _landscapeView(Responsive responsive) {
    return Row(
      children: [
        Expanded(
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: SizedBox(
              height: responsive.height,
              child: const Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Welcome(),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: SizedBox(
              height: responsive.height,
              child: const Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LoginForm(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
