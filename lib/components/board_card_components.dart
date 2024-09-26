import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:signet/data_sources/time_diff_display.dart';
import 'package:signet/models/boards/board_models.dart';

class BoardCardComponents extends StatelessWidget {
  const BoardCardComponents({
    super.key,
    required this.board,
  });

  final BoardModels board;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffe8e8e8),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                board.name,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  fontFamily: 'Pretendard',
                  color: Color(
                    0xffa3a3a3,
                  ),
                ),
              ),
              Text(
                DataSource().timeDiffDisplay(board.createdAt),
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  fontFamily: 'Pretendard',
                  color: Color(
                    0xffd1d1d1,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            board.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: const TextStyle(
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset('assets/images/like.svg'),
              const SizedBox(
                width: 6,
              ),
              Text(
                board.like.toString(),
                style: const TextStyle(
                  color: Color(0xff05a4e9),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              SvgPicture.asset('assets/images/comment.svg'),
              const SizedBox(
                width: 6,
              ),
              Text(
                board.dislike.toString(),
                style: const TextStyle(
                  color: Color(0xff05a4e9),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
