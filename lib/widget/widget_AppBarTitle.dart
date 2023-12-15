//앱바 제목 위젯

import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  final int counter;
  final VoidCallback homeScreenSetCounter;

  const AppBarTitle({
    Key? key,
    required this.counter,
    required this.homeScreenSetCounter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
        homeScreenSetCounter(); //클릭시 해당 화면 새로고침

        Scrollable.ensureVisible(
          context,
          alignment: 0.0, // 0.0은 제일 위로 스크롤
          duration: Duration(milliseconds: 500), // 스크롤 시간
        );
      },
      child: const Text( //Title 추후 한/영 로고 나오면 대체 예정
        '휠씬', // WheelScene
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 181, 142, 188)),
      ),
    );
  }
}