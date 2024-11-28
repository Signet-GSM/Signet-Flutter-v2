part of './search_page.dart';

class _Textfield extends StatelessWidget {
  _Textfield({super.key});

  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 42,
      decoration: const BoxDecoration(
        color: Color(0xffe8e8e8),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: TextField(
        controller: _textController,
        cursorColor: Colors.black,
        style: const TextStyle(
          fontSize: 14.0,
          color: Colors.black,
        ),
        decoration: const InputDecoration(
          hintText: '검색어를 입력하세요',
          hintStyle: TextStyle(color: Color(0xffadadad)),
          isDense: true,
          fillColor: Color(0xffe8e8e8),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(
              width: 0,
              color: Color(0xffe8e8e8),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(
              color: Color(0xffe8e8e8),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(
              width: 0,
              color: Color(0xffe8e8e8),
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(
              width: 0,
              color: Color(0xffe8e8e8),
            ),
          ),
        ),
      ),
    );
  }
}
