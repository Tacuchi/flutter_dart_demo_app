import 'package:flutter/material.dart';
import 'package:flutter_dart_demo_app/examples/flutter_avanzado/utils/responsive.dart';
import 'package:flutter_svg/svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);

    return AspectRatio(
      aspectRatio: 14 / 12,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              Container(
                color: Colors.white,
                child: SvgPicture.asset(
                  'assets/login_app/welcoming.svg',
                  width: constraints.maxWidth * 0.8,
                  height: constraints.maxHeight * 0.8,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: constraints.maxHeight * 0.1,
                width: constraints.maxWidth,
                child: Center(
                  child: Text(
                    'Welcome Back!',
                    style: TextStyle(
                      fontSize: responsive.ip(3),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
