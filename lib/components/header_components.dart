import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderComponents extends StatelessWidget {
  const HeaderComponents({
    super.key,
    required this.title,
    required this.onPressed,
  });
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      backgroundColor: Colors.white,
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20,
          fontFamily: 'Pretendard',
          color: Color(0xff121212),
        ),
      ),
      centerTitle: true,
      leading: IconButton(
        onPressed: onPressed,
        iconSize: 36,
        icon: SvgPicture.asset('assets/images/back_arrow.svg'),
      ),
    );
  }
}
