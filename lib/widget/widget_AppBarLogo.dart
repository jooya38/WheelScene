//앱바 로고 위젯
import 'package:flutter/material.dart';


class AppBarLogo extends StatelessWidget {
  final int counter;
  final VoidCallback homeScreenSetCounter;

  const AppBarLogo({
    Key? key,
    required this.counter,
    required this.homeScreenSetCounter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // 클릭 시 해당 화면 새로 고침
        //현재 페이지 다시 빌드 -> screen_home.dart의 homeScreenSetCounter사용
        //counter 값 변경하고 화면 다시 그리기
        homeScreenSetCounter();

        Scrollable.ensureVisible(
          context,
          alignment: 0.0, // 0.0은 제일 위로 스크롤
          duration: Duration(milliseconds: 500), // 스크롤 시간
        );
      },
      child: Container(
        width: 40,
        height: 40,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/우리 로고 이미지.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
