import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// stless + tab!
// App의 메인 페이지...
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // 메인 페이지 디자인을 여기서!
    // 위젯 짜집기!
    return MaterialApp(
      // MaterialApp.. 구글이 제공하는 Material테마를 이용할 수 있다.
      // 하지만 구글 스타일임.
      // 아이폰 테마로 사용하고 싶다면 Cupertino
      // 커스터마이징 하고싶다면 그래도 MaterialApp()을 써야 함. 거기서 Google 스타일만 따로 빼면 된다.
      home : Center(
        // child : Container( width:50, height:50, color: Colors.blue )
        child : Scaffold(
          // Scaffold란, 앱을 상중하로 나눠주는 위젯.
          appBar: AppBar(
            centerTitle: true,
            title: Text('demo app'),
          ),
          body : Row(
                // Row()대신 Column()을 쓰는 것도 가능
            mainAxisAlignment: MainAxisAlignment.center, // display : flex와 유사.
              // Row의 mainAxis는 가로축 정렬, Column의 mainAxis는 세로축 정렬
            // crossAxisAlignment: CrossAxisAlignment.center,  // 반대축(row:세로축, column:가로축) 정렬

            children: [
              Text('test'),
              Icon(Icons.star),
              Icon(Icons.star)
            ],
          ),
          bottomNavigationBar: BottomAppBar(
            // child : Text('this is bottom')
            child:
            Container(
              height: 60,
              child : Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(Icons.phone),
                  Icon(Icons.message),
                  Icon(Icons.contact_page),
                ],
              ),
            ),
          )
        )

      )

      // 박스 위젯 => Container() || SizedBox()
        // 스타일을 줄 땐 (스타일명 : 값)
        // Flutter의 사이즈 단위는 px이 아닌 LP(Logical Pixel)
        // px로 넣지 않는 이유는 기기마다 픽셀의 절대적인 크기가 다르기 떄문.
        // LP는 우리가 눈으로 보는 절대적인 수치.. 1cm는 38LP
      // 자식 위젯의 기준점을 중앙으로 설정해주는 위젯 => Center() || Align()

      // 이미지 위젯 => Image.asset('경로')
        // 이미지를 쓸 때에는 쓰겠다고 등록도 해야 함.
        //  (pubspec.yaml) => 앱 만들 때 필요한 자료들을 쭉 정리한 부분
            // 외부 패키지나 라이브러리같은 것들을 기록함.
            // Image.asset('cat.png')

      // 아이콘 위젯 => Icon(Icons.아이콘이름)

      // 글자 위젯 => Text('안녕~')
    );
  }
}


