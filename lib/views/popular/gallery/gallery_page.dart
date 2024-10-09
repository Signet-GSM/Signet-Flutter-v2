import 'package:flutter/material.dart';
import 'package:signet/components/gallery_card_components.dart';
import 'package:signet/components/header_components.dart';
import 'package:signet/models/boards/gallery_models.dart';
part './gallery_scaffold.dart';
part './gallery_header.dart';
part './gallery_popular_gallery.dart';

class PopularGalleryPage extends StatelessWidget {
  const PopularGalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _Scaffold(
      header: _Header(),
      popularGallery: _PopularGallery(),
    );
  }
}
