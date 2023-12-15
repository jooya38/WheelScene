//검색 바 누를 시 나오는 화면

import 'package:flutter/material.dart';
import 'package:lookie_app/widget/widget_Store_ExpasionTile.dart';
import 'package:lookie_app/widget/widget_searchBar.dart';


class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  int homeSetcounter = 0; // 정수형 상태 선언; 홈 화면 세팅

  void homeScreenSetCounter() { // 리셋 로딩
    setState(() {
      homeSetcounter++;
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
          title: SearchBar(), //입력했던 텍스트가 들어가있어야함.
          leading: Icon(Icons.arrow_back_ios) //화살표 아이콘 //leading에 나오는 게 아니라, SearchBar 안에서 왼쪽에 화살표 icon, 오른쪽에 필터 버튼이 존재해야함.
        ),
        body: ListView(
          children: [
            Store(),
            Store(),
          ],
        ),
        //검색 결과가 나와야함.
      ),
    );
  }
}