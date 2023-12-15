//메인 화면

import 'package:flutter/material.dart';
import 'package:lookie_app/widget/widget_AppBarLogo.dart';
import 'package:lookie_app/widget/widget_AppBarTitle.dart';
import 'package:lookie_app/widget/widget_bottomTapIcon.dart';
import 'package:lookie_app/widget/widget_buildBody.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int homeSetcounter = 0; // 정수형 상태 선언; 홈 화면 세팅
  int bottomSelectedIndex = 1; //바텀바 아이콘 선택 시 인덱스; 탭 이동 시 사용할 변수

  @override
  void initState() {
    super.initState();
    // initState에서 초기화
    onItemTapped(bottomSelectedIndex);
  }

  void homeScreenSetCounter() { // 리셋 로딩
    setState(() {
      homeSetcounter++;
    });
  }

  void onItemTapped(int index){  //바텀바 아이콘 탭 시 해당 인덱스 저장
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;

    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            // toolbarHeight: height*0.1,
            title:AppBarTitle(
                      counter: homeSetcounter,
                      homeScreenSetCounter: homeScreenSetCounter,
                    ),
                    centerTitle: true,
                    backgroundColor: const Color.fromARGB(255, 208, 237, 233),
                    //Colors.lightGreenAccent,
                    leading: AppBarLogo(
                    counter: homeSetcounter,
                    homeScreenSetCounter: homeScreenSetCounter,
                    ),
                // SizedBox(height: 8.0),
                bottom : const PreferredSize(
                  preferredSize: Size.fromHeight(50),
                  child : SearchBar(),
                ),
          ),
          body: Column(
            children: [
              Expanded(
                child: BuildBody(bottomSelectedIndex: bottomSelectedIndex),
              ),
            ],
          ),
          bottomNavigationBar: BottomBar(
            bottomSelectedIndex: bottomSelectedIndex,
            onItemTapped: onItemTapped,
          ),
      ),
    );
  }
}


// 색상표
/* Color(R,G,B)
* 베이지 색상 : 250, 231, 235
* 연핑크 : 241, 215, 232
* 연민트화이트(거의 흰색) : 236, 247, 247
* 자주색 : 181, 142, 188
* 민트색 : 208, 237, 233
* 연자주 :  216, 186, 210
*/