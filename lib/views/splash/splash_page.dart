import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:signet/views/home/home_page.dart';

part '../splash/splash_scaffold.dart';
part '../splash/splash_logo.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    print('splash');
    return const _Scaffold(
      splashLogo: _Logo(),
    );
  }
}
