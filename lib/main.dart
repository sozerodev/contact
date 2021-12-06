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
      home: Center(
        child : Container( width:50, height:50, color: Colors.blue )
      )

      // 박스 위젯 => Container() || SizedBox()
        // 스타일을 줄 땐 (스타일명 : 값)
        // Flutter의 사이즈 단위는 px이 아닌 LP
      // 자식 위젯의 기준점을 중앙으로 설정해주는 위젯 => Center()

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


