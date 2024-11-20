part of './search_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.header,
  });

  final PreferredSizeWidget header;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header,
      body: const Column(
        children: [],
      ),
    );
  }
}
