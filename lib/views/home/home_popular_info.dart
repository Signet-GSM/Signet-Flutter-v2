part of '../home/home_page.dart';

class _PopularGalleryInfo extends StatelessWidget {
  const _PopularGalleryInfo();

  @override
  Widget build(BuildContext context) {
    return Info(
      text: '인기 갤러리',
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (builder) => const HomePage(),
        ),
      ),
    );
  }
}

class _PopularBoardInfo extends StatelessWidget {
  const _PopularBoardInfo();

  @override
  Widget build(BuildContext context) {
    return Info(
      text: '인기 게시판',
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (builder) => const HomePage(),
        ),
      ),
    );
  }
}
