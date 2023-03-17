import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

// flutter는 widget의 조합이다.
// build 메소드는 widget의 ui를 만든다.
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Material은 구글, Cupertino는 ios 스타일이다.
    return MaterialApp(
      // Scaffold는 뼈대이다.
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello flutter!'),
        ),
        body: Center(
          child: Text('Hello wolrd!'),
        ),
      ),
    );
  }
}
