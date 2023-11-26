import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dart_demo_app/examples/flutter_avanzado/utils/responsive.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);

    return SizedBox(
      width: 330,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CupertinoTextField(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            prefix: Icon(
              Icons.person,
              color: Colors.grey,
            ),
            placeholder: 'Username',
          ),
          const SizedBox(
            height: 10,
          ),
          const CupertinoTextField(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            prefix: Icon(
              Icons.lock,
              color: Colors.grey,
            ),
            placeholder: 'Password',
            obscureText: true,
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.centerRight,
            child: CupertinoButton(
              padding: EdgeInsets.zero,
              child: const Text('Forgot password'),
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: responsive.ip(2),
          ),
          CupertinoButton.filled(
            onPressed: () {},
            child: const Text('Login'),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Or continue with',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: responsive.ip(2),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton.outlined(
                onPressed: () {},
                icon: const Icon(
                  Icons.facebook,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              IconButton.outlined(
                onPressed: () {},
                icon: const Icon(
                  Icons.g_mobiledata,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          SizedBox(
            height: responsive.ip(2),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Don\'t have an account?',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              CupertinoButton(
                padding: EdgeInsets.zero,
                child: const Text('Sign up'),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
