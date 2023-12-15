//바텀바 아이콘 선택 이동

import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final int bottomSelectedIndex;
  final Function(int) onItemTapped;

  const BottomBar({
    Key? key,
    required this.bottomSelectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem( //찜 목록 탭
            icon:Icon(Icons.favorite_border_rounded),
            label :'찜 목록',
          ),
          BottomNavigationBarItem( //메인 화면 탭
            icon:Icon(Icons.home),
            label :'홈',
          ),
          BottomNavigationBarItem( //마이페이지 탭
            icon:Icon(Icons.perm_identity_outlined),
            label :'마이페이지',
          ),
        ],
      currentIndex: bottomSelectedIndex,
      onTap: onItemTapped,
      selectedItemColor: Color.fromARGB(255, 181, 142, 188), // 선택되지 않은 아이템의 색상; 자주
      unselectedItemColor: Color.fromARGB(255, 216,186,210),   // 선택된 아이템의 색상; 연보라
    );
  }
}
