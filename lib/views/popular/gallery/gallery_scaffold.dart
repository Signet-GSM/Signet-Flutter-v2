part of './gallery_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.header,
    required this.popular_gallery,
  });
  final PreferredSizeWidget header;
  final Widget popular_gallery;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header,
      body: popular_gallery,
    );
  }
}
