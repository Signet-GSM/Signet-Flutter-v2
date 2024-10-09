part of './board_page.dart';

class _PopularBoard extends StatelessWidget {
  const _PopularBoard();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 42),
      shrinkWrap: true,
      itemBuilder: (context, index) => BoardCardComponents(
        board: BoardModels.init(),
      ),
      separatorBuilder: (context, index) => const Divider(
        color: Color(0xffe8e8e8),
        thickness: 1,
        height: 20,
      ),
      itemCount: 100,
    );
  }
}
