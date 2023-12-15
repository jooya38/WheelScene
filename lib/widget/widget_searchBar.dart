//검색 바 위젯
import 'package:flutter/material.dart';
import 'package:lookie_app/screen/screen_searchPage.dart';


class SearchBar extends StatelessWidget implements PreferredSizeWidget{
  const SearchBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    // double appbarHeight = kToolbarHeight;

    return GestureDetector(
      onTap: () {
        // 클릭 시 searchPage로 이동
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SearchPage(),
          ),
        );
      },
      child: Container(
        width: width,
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              offset: const Offset(0, 3),
              blurRadius: 5,
            ),
          ],
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          color: Colors.white,
        ),
        // enabled: true,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            decoration: InputDecoration(
              enabled: true,
              hintText: "검색어를 입력해주세요.",
              hintStyle: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
              border: InputBorder.none,
              // prefixIcon: const Icon(Icons.arrow_back),
            ),
          ),
        ),
      ),
    );
  }
}