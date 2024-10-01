part of './gallery_page.dart';

class _PopularGallery extends StatelessWidget {
  const _PopularGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 42),
      shrinkWrap: true,
      itemBuilder: (context, index) => GalleryCardComponents(
        rank: index,
        gallery: GalleryModels.init(),
      ),
      separatorBuilder: (context, index-1) => const Divider(
        color: Color.fromARGB(255, 202, 202, 202),
        thickness: 1,
        height: 30,
      ),
      itemCount: 100,
    );
  }
}
