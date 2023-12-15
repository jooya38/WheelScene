//body 조건에 따른 화면 제시

import 'package:flutter/material.dart';
import 'package:lookie_app/widget/widget_Store_ExpasionTile.dart';

class BuildBody extends StatelessWidget {
  final int bottomSelectedIndex;

  const BuildBody({
    Key? key,
    required this.bottomSelectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (bottomSelectedIndex) {
      case 0:  //찜 목록
        return const Center(
          child: Text('찜목록; 찜 누른 거 리스트로 띄워주기'),
        );
      case 1:  //홈
        return Center(
          child: ListView(
            children: [
              Store(),
              Store(),
              Store(),
              Store(),
              Store(),
              Store(),
              Store(),
              Store(),
              Store(),
              Store(),
              Store(),
              Store(),
              Store(),
              Store(),
              Store(),
              Store(),
              Store(),
              Store(),
            ],
          ),
        );
      case 2:  //마이페이지
        return const Center(
          child: Text('마이페이지'),
        );
      default:
        return Container();
    }
  }
}
