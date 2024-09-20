part of '../splash/splash_page.dart';

class _Logo extends StatefulWidget {
  const _Logo({super.key});

  @override
  State<_Logo> createState() => _LogoState();
}

class _LogoState extends State<_Logo> with TickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
    vsync: this,
    duration: const Duration(
      milliseconds: 400,
    ),
  );

  late final CurvedAnimation _curvedAnimation = CurvedAnimation(
    parent: _animationController,
    curve: Curves.easeInOutCubic,
  );

  @override
  void initState() {
    Timer(
      const Duration(milliseconds: 300),
      () {
        _animationController.forward();
      },
    );
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (builder) => const HomePage()),
          (predicate) => false,
        );
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _curvedAnimation,
      builder: (context, child) {
        return Opacity(
          opacity: _animationController.value,
          child: Transform.translate(
            offset: Offset(_curvedAnimation.value * 80 - 80, 0),
            child: SvgPicture.asset(
              'assets/images/splash_logo.svg',
            ),
          ),
        );
      },
    );
  }
}
