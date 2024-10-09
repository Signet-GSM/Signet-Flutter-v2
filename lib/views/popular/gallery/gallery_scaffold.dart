part of './gallery_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.header,
    required this.popularGallery,
  });
  final PreferredSizeWidget header;
  final Widget popularGallery;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header,
      body: popularGallery,
    );
  }
}
