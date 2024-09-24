part of '../home/home_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.header,
    required this.popularGalleryInfo,
    required this.popularGalleryCard,
    required this.addGalleryCard,
    required this.popularBoardInfo,
    required this.popularBoardCard,
  });

  final Widget header;
  final Widget popularGalleryInfo;
  final Widget popularGalleryCard;
  final Widget addGalleryCard;
  final Widget popularBoardInfo;
  final Widget popularBoardCard;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          header,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Column(
              children: [
                const SizedBox(height: 150),
                popularGalleryInfo,
                const SizedBox(height: 18),
                popularGalleryCard,
                const SizedBox(height: 42),
                addGalleryCard,
                const SizedBox(height: 42),
                popularBoardInfo,
                const SizedBox(height: 18),
                popularBoardCard,
                const SizedBox(height: 34),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
