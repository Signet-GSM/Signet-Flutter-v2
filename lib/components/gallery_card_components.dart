import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:signet/models/boards/gallery_models.dart';

class GalleryCardComponents extends StatelessWidget {
  const GalleryCardComponents({super.key, required this.gallery, required this.rank});

  final GalleryModels gallery;
  final int rank;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  gallery.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    fontFamily: 'Pretendard',
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Text(
                  '${rank + 1}등',
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    fontFamily: 'Pretendard',
                    color: Color(0xff05A4E9),
                  ),
                ),
                const SizedBox(
                  width: 3,
                ),
                SvgPicture.asset(
                  'assets/images/trophy.svg',
                  width: 18,
                  height: 18,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
