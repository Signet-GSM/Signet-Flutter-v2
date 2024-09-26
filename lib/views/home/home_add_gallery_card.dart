part of '../home/home_page.dart';

class _AddGalleryCard extends StatelessWidget {
  const _AddGalleryCard();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 32),
        decoration: const BoxDecoration(
          color: Color(0xffD5F0FB),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/pencil.svg',
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Text(
                      '갤러리 만들기',
                      style: TextStyle(
                        fontFamily: 'Pretendard',
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '새로운 갤러리를 만들어 보세요!',
                  style: TextStyle(
                    fontFamily: 'Pretendard',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffa3a3a3),
                  ),
                )
              ],
            ),
            SvgPicture.asset(
              'assets/images/add.svg',
              width: 46,
              height: 46,
            ),
          ],
        ),
      ),
    );
  }
}
