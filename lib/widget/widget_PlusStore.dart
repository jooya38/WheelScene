//매장 정보에서 더보기 아이콘 누르면 나오는 박스 (상세정보가 담긴 것)

import 'package:flutter/material.dart';


class PlusStore extends StatelessWidget {
  const PlusStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: const EdgeInsets.all(16),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '메뉴',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '봉골레 파스타',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Text(
                    '리뷰',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  // Review() 위젯 추가
                ],
              ),
            );
  }
}
