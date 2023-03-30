import 'package:flutter/material.dart';
import 'package:toonflix/screens/home_screen.dart';

void main() {
  runApp(const App());
}

// flutter는 widget의 조합이다.
// build 메소드는 widget의 ui를 만든다.
// StatelessWidget은 아주 기초적인 Widget이고 화면에 뭔가를 띄워주는 거 말고는 다른 기능이 없다.
// class App extends StatelessWidget {
//   const App({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Material은 구글, Cupertino는 ios 스타일이다.
//     return MaterialApp(
//       // Scaffold는 뼈대이다.
//       home: Scaffold(
//           backgroundColor: const Color(
//               0xFF181818), // 0xFF 뒤에 색상값을 붙이면 custom으로 색상을 지정할 수 있다.
//           // SingleChildScrollView로 인해 화면에서 콘텐츠가 넘쳐도 스크롤로 내리거나 올려서 볼 수 있다.
//           body: SingleChildScrollView(
//             child: Padding(
//               // EdgeInsets.all()은 좌우상하 전부에 padding을 준다.
//               // symmetric은 수평 or 수직에 padding을 줄 수 있다. horizontal: 수평 vertical: 수직
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const SizedBox(
//                     height: 30,
//                   ),
//                   Row(
//                     mainAxisAlignment:
//                         MainAxisAlignment.end, // mainAxisAlignment은 수평 방향
//                     children: [
//                       Column(
//                         crossAxisAlignment:
//                             CrossAxisAlignment.end, // crossAxisAlignment은 수직 방향
//                         children: [
//                           const Text(
//                             'Hey, Minu',
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 28,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                           Text(
//                             'Welcome back',
//                             style: TextStyle(
//                               color: Colors.white.withOpacity(0.8),
//                               fontSize: 16,
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   Text(
//                     'Total Balance',
//                     style: TextStyle(
//                       color: Colors.white.withOpacity(0.8),
//                       fontSize: 22,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   const Text(
//                     '\$5 194 482',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 42,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   const Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       // Container는 HTML에서 div 같은 것이다.
//                       Button(
//                         text: 'Transfer',
//                         bgColor: Color(0xFFF2B33A),
//                         textColor: Colors.black,
//                       ),
//                       Button(
//                         text: 'Request',
//                         bgColor: Color(0xFF1F2123),
//                         textColor: Colors.white,
//                       )
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 30,
//                   ),
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       const Text(
//                         'Wallets',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 36,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       Text('View All',
//                           style: TextStyle(
//                             color: Colors.white.withOpacity(0.8),
//                             fontSize: 18,
//                           )),
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   const CurrencyCard(
//                     name: 'Euro',
//                     code: 'EUR',
//                     amount: '6 428',
//                     icon: Icons.euro_rounded,
//                     isInverted: false,
//                     dx: 0,
//                     dy: 0,
//                   ),
//                   const CurrencyCard(
//                     name: 'Bitcoin',
//                     code: 'BTC',
//                     amount: '9 785',
//                     icon: Icons.currency_bitcoin,
//                     isInverted: true,
//                     dx: 0,
//                     dy: -15,
//                   ),
//                   const CurrencyCard(
//                     name: 'Dollar',
//                     code: 'USD',
//                     amount: '428',
//                     icon: Icons.attach_money_outlined,
//                     isInverted: false,
//                     dx: 0,
//                     dy: -35,
//                   )
//                 ],
//               ),
//             ),
//           )),
//     );
//   }
// }

// Stateful widget은 위젯에 데이터를 저장하고 실시간으로 데이터의 변화를 볼 수 있다.
// class App extends StatefulWidget {
//   const App({super.key});

//   @override
//   State<App> createState() => _AppState();
// }

// class _AppState extends State<App> {
//   bool showTitle = true;

//   void toggleTitle() {
//     setState(() {
//       showTitle = !showTitle;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         textTheme: const TextTheme(
//           titleLarge: TextStyle(
//             color: Colors.red,
//           ),
//         ),
//       ),
//       home: Scaffold(
//         backgroundColor: const Color(0xFFF4EDDB),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               showTitle ? const MyLargeTitle() : const Text('nothing'),
//               IconButton(
//                   onPressed: toggleTitle,
//                   icon: const Icon(Icons.remove_red_eye))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyLargeTitle extends StatefulWidget {
//   const MyLargeTitle({
//     super.key,
//   });

//   @override
//   State<MyLargeTitle> createState() => _MyLargeTitleState();
// }

// class _MyLargeTitleState extends State<MyLargeTitle> {
//   // initState는 부모 요소에 의존하는 데이터를 초기화해야 할 때 사용한다.
//   // initState 매소드는 항상 build 메소드보다 먼저 호출되어야 하며 오직 단 한 번만 호출된다.
//   @override
//   void initState() {
//     super.initState();
//     print('initState');
//   }

//   // dispose 메소드는 위젯이 스크린에서 제거될 때 호출되는 메소드이다.
//   @override
//   void dispose() {
//     super.dispose();
//     print('dispose');
//   }

//   @override
//   Widget build(BuildContext context) {
//     print('build');
//     return Text(
//       'My Large Title',
//       style: TextStyle(
//         fontSize: 30,
//         // context를 이용하면 부모요소에 접근할 수 있다.
//         color: Theme.of(context).textTheme.titleLarge?.color,
//       ),
//     );
//   }
// }

// class App extends StatefulWidget {
//   const App({super.key});

//   @override
//   State<App> createState() => _AppState();
// }

// class _AppState extends State<App> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         theme: ThemeData(
//           colorScheme: ColorScheme.fromSwatch(
//             backgroundColor: const Color(0xFFE7626C),
//           ),
//           textTheme: const TextTheme(
//             displayLarge: TextStyle(
//               color: Color(0xFF232B55),
//             ),
//           ),
//           cardColor: const Color(0xFFF4EDDB),
//         ),
//         home: const HomeScreen());
//   }
// }

class App extends StatelessWidget {
  // 아래의 코드는 key를 StateLess Widget이라는 슈퍼클래스에 보낸거다.
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
