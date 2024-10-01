import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:signet/components/board_card_components.dart';
import 'package:signet/components/gallery_card_components.dart';
import 'package:signet/components/info_components.dart';
import 'package:signet/models/boards/board_models.dart';
import 'package:signet/models/boards/gallery_models.dart';
import 'package:signet/views/popular/gallery/gallery_page.dart';
part '../home/home_scaffold.dart';
part '../home/home_header.dart';
part '../home/home_popular_card.dart';
part '../home/home_add_gallery_card.dart';
part '../home/home_popular_info.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _Scaffold(
      header: _Header(),
      popularGalleryInfo: _PopularGalleryInfo(),
      popularGalleryCard: _PopularGalleryCard(),
      addGalleryCard: _AddGalleryCard(),
      popularBoardInfo: _PopularBoardInfo(),
      popularBoardCard: _PopularBoardCard(),
    );
  }
}
