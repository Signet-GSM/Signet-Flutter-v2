import 'package:flutter/material.dart';
import 'package:signet/components/board_card_components.dart';
import 'package:signet/components/header_components.dart';
import 'package:signet/models/boards/board_models.dart';
part './board_scaffold.dart';
part './board_header.dart';
part './board_popular_board.dart';

class PopularBoardPage extends StatelessWidget {
  const PopularBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _Scaffold(
      header: _Header(),
      popularBoard: _PopularBoard(),
    );
  }
}
