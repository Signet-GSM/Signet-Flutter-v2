part of './board_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    super.key,
    required this.header,
    required this.popular_board,
  });
  final PreferredSizeWidget header;
  final Widget popular_board;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header,
      body: popular_board,
    );
  }
}
