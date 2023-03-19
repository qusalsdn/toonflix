import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

// flutter는 widget의 조합이다.
// build 메소드는 widget의 ui를 만든다.
// StatelessWidget은 아주 기초적인 Widget이고 화면에 뭔가를 띄워주는 거 말고는 다른 기능이 없다.
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Material은 구글, Cupertino는 ios 스타일이다.
    return MaterialApp(
      // Scaffold는 뼈대이다.
      home: Scaffold(
          backgroundColor:
              Color(0xFF181818), // 0xFF 뒤에 색상값을 붙이면 custom으로 색상을 지정할 수 있다.
          body: Padding(
            // EdgeInsets.all()은 좌우상하 전부에 padding을 준다.
            // symmetric은 수평 or 수직에 padding을 줄 수 있다. horizontal: 수평 vertical: 수직
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.end, // mainAxisAlignment은 수직 방향
                  children: [
                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.end, // crossAxisAlignment은 수평 방향
                      children: [
                        Text(
                          'Hey, Minu',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
