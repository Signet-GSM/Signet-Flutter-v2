import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
part './search_scaffold.dart';
part './search_header.dart';
part './search_textfield.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _Scaffold(header: _Header(),);
  }
}
