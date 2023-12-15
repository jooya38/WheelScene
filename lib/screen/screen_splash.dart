import 'package:flutter/material.dart';

// class _HomeScreenState extends State<HomeScreen> {
//


  @override
Widget build(BuildContext context) {
  final String imageLogoName = 'assets/우리 로고 이미지.jpg';

  var screenHeight = MediaQuery.of(context).size.height;
  var screenWidth = MediaQuery.of(context).size.width;

  return WillPopScope(
    onWillPop: () async => false,
    child: MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor:1.0),
      child: new Scaffold(
        backgroundColor: hexToColor('#6F22D2'),
        body: new Container(
          //height : MediaQuery.of(context).size.height,
          //color: kPrimaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: screenHeight * 0.384375),
              Container(
                child: SvgPicture.asset(
                  imageLogoName,
                  width: screenWidth * 0.616666,
                  height: screenHeight * 0.0859375,
                ),
              ),
              Expanded(child: SizedBox()),
              Align(
                child: Text("© Copyright 2020, 내방니방(MRYR)",
                    style: TextStyle(
                      fontSize: screenWidth*( 14/360), color: Color.fromRGBO(255, 255, 255, 0.6),)
                ),
              ),
              SizedBox( height: MediaQuery.of(context).size.height*0.0625,),
            ],
          ),

        ),
      ),
    ),
  );
}

@override
void initState() {
  Timer(Duration(milliseconds: 1500), () {
    Navigator.push(context, MaterialPageRoute(
        builder: (context) => LoginMainScreen()
    )
    );
  });
}

@override
void initState() {
  Timer(Duration(milliseconds: 1500), () {
    if(Condition){
      exit(0);
    }
    else{
      Navigator.push(context, MaterialPageRoute(
          builder: (context) => LoginMainScreen()
      )
      );
    }
  });
}

//출처: https://box-world.tistory.com/75 [Box World:티스토리]