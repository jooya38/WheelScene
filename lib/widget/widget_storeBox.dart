// 리스트에 나올 가게 하나의 형태
import 'package:flutter/material.dart';
import 'package:lookie_app/widget/widget_favorate.dart';

class StoreBox extends StatelessWidget {

  const StoreBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;

    return SizedBox(
      width: width * 0.8,
      child: const Row(
        children: [
          // 매장 사진이 들어감.
          // Image.asset('assets/store_image.png', width: 100, height: 100),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 매장 이름 텍스트
              Text(
                '매장 이름',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 8),
              // 매장 간단한 소개 텍스트
              Text(
                '매장 간단한 소개',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 8),
              // 매장의 키워드 블럭 형태로 한 줄로 키워드마다 블럭으로 나열
              Row(
                children: [
                  // 키워드 블럭 예시:
                  // KeywordBlock(keyword: '키워드1'),
                  // KeywordBlock(keyword: '키워드2'),
                  // KeywordBlock(keyword: '키워드3'),
                ],
              ),
            ],
          ),

          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Column(
                children: [
                  // 맨 오른쪽으로 favorite 아이콘이랑 밑으로 화살표 아이콘 나열
                  FavoriteIcon(),
                  SizedBox(width: 8),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//키워드 블럭 위젯
class KeywordBlock extends StatelessWidget {
  final String keyword;

  const KeywordBlock({Key? key, required this.keyword}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        keyword,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}

//
// // 화살표 아이콘 위젯
// class ArrowIcon extends StatelessWidget {
//   const ArrowIcon({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const Icon(Icons.arrow_forward);
//   }
// }
