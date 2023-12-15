import 'package:flutter/material.dart';
import 'package:lookie_app/widget/widget_PlusStore.dart';
import 'package:lookie_app/widget/widget_storeBox.dart';

class Store extends StatelessWidget {
  const Store({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ExpansionTile(
        title: StoreBox(),
        initiallyExpanded: false,
        backgroundColor: Colors.white,
        collapsedTextColor: Colors.black,//Color.fromARGB(255,181, 142, 188),
        collapsedShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular((10.0))
        ),//테두리
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular((10.0))
        ),//하위 목록이 확장되었을 때 타일의 테두리 모양
        textColor: Colors.black,//하위목록 확장 시 타일 제목 색상
        expandedCrossAxisAlignment: CrossAxisAlignment.start,//타일 확장 시 하위 항목 정렬
        iconColor: Colors.grey, //하위 목록이 확장될 때 타일 확장 화살표 아이콘의 아이콘 색상
        tilePadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),//ListTile에 대한 패딩
        children: [
          PlusStore(),
          ],
      ),
    );
  }
}


