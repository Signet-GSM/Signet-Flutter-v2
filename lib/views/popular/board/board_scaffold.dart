part of './board_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.header,
    required this.popularBoard,
  });
  final PreferredSizeWidget header;
  final Widget popularBoard;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header,
      body: popularBoard,
    );
  }
}
