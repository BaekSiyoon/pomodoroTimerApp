import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _AppState();
}

class _AppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: const Scaffold(
        backgroundColor: Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyLargeTitle(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  int count = 0;

  //  부모요소에 의존하는 데이터를 초기화 해야하는 경우
  // 오직 단 한번만 호출 된다
  // 항상 사용할 필요는 없다.
// initState 는 항상 build 메소드 전에 실행 된다
  @override
  void initState() {
    super.initState();
  }
  // widget life cycle

  // 위젯이 스크린에서 제거 될때 호출 되는 메서드
  // api 업데이트, 이벤트 리스너로 부터 구독 취소 등 form의 리스너로 부터 벗어나고 싶을때 사용 할 수 있다
  // dispose 메소드는 무언가를 취소 하는 곳이다
  @override
  void dispose() {
    super.dispose();
  }

  @override // 위젯에서 UI를 만들고
  Widget build(BuildContext context) {
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
