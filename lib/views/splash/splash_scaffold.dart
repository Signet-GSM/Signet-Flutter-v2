part of '../splash/splash_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.splashLogo,
  });

  final Widget splashLogo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: splashLogo,
      ),
    );
  }
}
