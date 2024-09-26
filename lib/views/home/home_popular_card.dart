part of '../home/home_page.dart';

class _PopularGalleryCard extends StatelessWidget {
  const _PopularGalleryCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 30,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffe8e8e8),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListView.separated(
        padding: const EdgeInsets.all(0),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => GalleryCardComponents(
          rank: index,
          gallery: GalleryModels.init(),
        ),
        separatorBuilder: (context, index) => const Divider(
          color: Color.fromARGB(255, 202, 202, 202),
          thickness: 1,
          height: 30,
        ),
        itemCount: 5,
      ),
    );
  }
}

class _PopularBoardCard extends StatelessWidget {
  const _PopularBoardCard();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        8,
        (index) => Column(
          children: [
            BoardCardComponents(
              board: BoardModels.init(),
            ),
            const SizedBox(
              height: 9,
            )
          ],
        ),
      ),
    );
  }
}
